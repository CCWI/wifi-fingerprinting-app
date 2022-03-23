import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';

import '../../../../common/03_domain/entities/signal/signal.dart';
import '../../../../common/03_domain/failures/signal_failure.dart';
import '../../../../common/03_domain/repositories/i_signal_repository.dart';
import '../../../../common/03_domain/value_objects/value_objects.dart';
import '../../03_domain/failures/calibration_fingerprint_failure.dart';
import 'services/i_calibration_fingerprint_service.dart';

part 'calibration_fingerprint_form_bloc.freezed.dart';
part 'calibration_fingerprint_form_event.dart';
part 'calibration_fingerprint_form_state.dart';

@injectable
class CalibrationFingerprintFormBloc extends Bloc<
    CalibrationFingerprintFormEvent, CalibrationFingerprintFormState> {
  final ISignalRepository _sRepository;
  final ICalibrationFingerprintService _cfService;

  KtList<Signal> _fetchedSignals;
  UniqueId _calibrationPointId;
  UniqueId _projectId;

  CalibrationFingerprintFormBloc({
    @required ISignalRepository sRepository,
    @required ICalibrationFingerprintService cfService,
  })   : assert(sRepository != null),
        assert(cfService != null),
        _sRepository = sRepository,
        _cfService = cfService,
        super(CalibrationFingerprintFormState.initial());

  @override
  Stream<CalibrationFingerprintFormState> mapEventToState(
    CalibrationFingerprintFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield CalibrationFingerprintFormState.signalLoadInProgress();

        final failureOrSignals = await _sRepository.fetchSignals();

        yield* failureOrSignals.fold(
          (failure) async* {
            yield CalibrationFingerprintFormState.signalLoadFailure(failure);
          },
          (signals) async* {
            _fetchedSignals = signals;
            _calibrationPointId = e.calibrationPointId;
            _projectId = e.projectId;
            yield CalibrationFingerprintFormState.signalLoadSuccess(signals);
          },
        );
      },
      saved: (e) async* {
        if (_fetchedSignals == null ||
            _calibrationPointId == null ||
            _projectId == null) {
          yield CalibrationFingerprintFormState
              .saveCalibrationFingerprintFailure(
                  CalibrationFingerprintFailure.unexpected());
          return;
        }

        final calibrationFingerprintAndDatabaseUpdate =
            await _cfService.createCalibrationFingerprintAndUpdateDatabase(
                _fetchedSignals, _projectId, _calibrationPointId);

        yield* calibrationFingerprintAndDatabaseUpdate.fold((failure) async* {
          yield CalibrationFingerprintFormState
              .saveCalibrationFingerprintFailure(failure);
        }, (success) async* {
          yield CalibrationFingerprintFormState
              .saveCalibrationFingerprintSuccess();
        });
      },
    );
  }
}
