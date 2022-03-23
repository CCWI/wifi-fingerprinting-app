import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';

import '../../../features/access_point/03_domain/repositories/i_access_point_repository.dart';
import '../../03_domain/entities/signal/signal.dart';
import '../../03_domain/failures/signal_failure.dart';
import '../../03_domain/repositories/i_signal_repository.dart';
import '../../03_domain/value_objects/value_objects.dart';

part 'scanned_networks_bloc.freezed.dart';
part 'scanned_networks_event.dart';
part 'scanned_networks_state.dart';

@injectable
class ScannedNetworksBloc
    extends Bloc<ScannedNetworksEvent, ScannedNetworksState> {
  final ISignalRepository _sRepository;
  final IAccessPointRepository _apRepository;
  Completer _refreshCompleter;

  ScannedNetworksBloc({
    ISignalRepository sRepository,
    IAccessPointRepository apRepository,
  })  : assert(sRepository != null),
        assert(apRepository != null),
        _sRepository = sRepository,
        _apRepository = apRepository,
        super(ScannedNetworksState.initial());

  Completer get refreshCompleter {
    if (_refreshCompleter == null || _refreshCompleter.isCompleted) {
      _refreshCompleter = Completer();
    }
    return _refreshCompleter;
  }

  @override
  Stream<ScannedNetworksState> mapEventToState(
    ScannedNetworksEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield const ScannedNetworksState.loadInProgress();
        yield* _getNetworks(e.projectId);
      },
      refreshed: (e) async* {
        yield* _getNetworks(e.projectId, isRefresh: true);
      },
    );
  }

  Stream<ScannedNetworksState> _getNetworks(Option<String> projectId,
      {bool isRefresh = false}) async* {
    yield* projectId.fold(
      () async* {
        yield* _getAllNetworks(isRefresh: isRefresh);
      },
      (projectIdStr) async* {
        yield* _getAllNetworksExceptFromProject(projectIdStr,
            isRefresh: isRefresh);
      },
    );
  }

  Stream<ScannedNetworksState> _getAllNetworksExceptFromProject(
      String projectId,
      {bool isRefresh = false}) async* {
    final accessPointsInProject = await _apRepository
        .readAllFromProject(UniqueId.fromFirebaseId(projectId));
    yield* accessPointsInProject.fold(
      (f) async* {
        yield ScannedNetworksState.loadFailure(
            SignalFailure.unableToScanNetworks());
      },
      (accessPoints) async* {
        final bssidsToBeExcluded = accessPoints.map((ap) => ap.bssid).toList();
        final fetchedSignals =
            await _sRepository.fetchSignalsExceptBSSID(bssidsToBeExcluded);
        yield fetchedSignals.fold(
          (failure) {
            if (isRefresh) {
              refreshCompleter.complete();
            }
            return ScannedNetworksState.loadFailure(failure);
          },
          (success) {
            if (!isRefresh) {
              return ScannedNetworksState.loadSuccess(success);
            } else {
              refreshCompleter.complete();
              return ScannedNetworksState.refreshSuccess(success);
            }
          },
        );
      },
    );
  }

  Stream<ScannedNetworksState> _getAllNetworks(
      {bool isRefresh = false}) async* {
    final failureOrNetworks = await _sRepository.fetchSignals();
    yield failureOrNetworks.fold(
      (failure) {
        if (isRefresh) {
          refreshCompleter.complete();
        }
        return ScannedNetworksState.loadFailure(failure);
      },
      (success) {
        if (!isRefresh) {
          return ScannedNetworksState.loadSuccess(success);
        } else {
          return ScannedNetworksState.refreshSuccess(success);
        }
      },
    );
  }
}
