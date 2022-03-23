import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';

import '../../../../common/03_domain/value_objects/value_objects.dart';
import '../../03_domain/entities/access_point.dart';
import '../../03_domain/failures/access_point_failures.dart';
import '../../03_domain/repositories/i_access_point_repository.dart';

part 'access_points_bloc.freezed.dart';
part 'access_points_event.dart';
part 'access_points_state.dart';

@injectable
class AccessPointsBloc extends Bloc<AccessPointsEvent, AccessPointsState> {
  final IAccessPointRepository _apRepository;
  StreamSubscription<Either<AccessPointFailure, KtList<AccessPoint>>>
      _apSubscription;

  AccessPointsBloc({@required IAccessPointRepository apRepository})
      : assert(apRepository != null),
        _apRepository = apRepository,
        super(AccessPointsState.initial());

  @override
  Stream<AccessPointsState> mapEventToState(
    AccessPointsEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const AccessPointsState.loadInProgress();
        await _apSubscription?.cancel();
        _apSubscription = _apRepository.watchAllFromProject(e.projectId).listen(
            (accessPoints) =>
                add(AccessPointsEvent.accessPointsReceived(accessPoints)));
      },
      accessPointsReceived: (e) async* {
        yield e.failureOrProjects.fold(
          (f) => AccessPointsState.loadFailure(f),
          (accessPoints) => AccessPointsState.loadSuccess(accessPoints),
        );
      },
    );
  }
}
