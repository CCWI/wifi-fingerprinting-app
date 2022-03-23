import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';

import '../../../../common/03_domain/value_objects/value_objects.dart';
import '../../03_domain/entities/calibration_fingerprint.dart';
import '../../03_domain/failures/calibration_fingerprint_failure.dart';
import '../../03_domain/repositories/i_calibration_fingerprint_repository.dart';

part 'calibration_fingerprints_bloc.freezed.dart';
part 'calibration_fingerprints_event.dart';
part 'calibration_fingerprints_state.dart';

@injectable
class CalibrationFingerprintsBloc
    extends Bloc<CalibrationFingerprintsEvent, CalibrationFingerprintsState> {
  final ICalibrationFingerprintRepository _cfRepository;
  StreamSubscription<
          Either<CalibrationFingerprintFailure, KtList<CalibrationFingerprint>>>
      _cfSubscription;

  CalibrationFingerprintsBloc(
      {@required ICalibrationFingerprintRepository cfRepository})
      : assert(cfRepository != null),
        _cfRepository = cfRepository,
        super(CalibrationFingerprintsState.initial());

  @override
  Stream<CalibrationFingerprintsState> mapEventToState(
    CalibrationFingerprintsEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const CalibrationFingerprintsState.loadInProgress();
        await _cfSubscription?.cancel();
        _cfSubscription = _cfRepository
            .watchAllFromCalibrationPoint(e.calibrationPointId)
            .listen((calibrationFingerprints) => add(
                CalibrationFingerprintsEvent.calibrationFingerprintsReceived(
                    calibrationFingerprints)));
      },
      calibrationFingerprintsReceived: (e) async* {
        yield e.failureOrProjects.fold(
          (f) => CalibrationFingerprintsState.loadFailure(f),
          (calibrationFingerprints) =>
              CalibrationFingerprintsState.loadSuccess(calibrationFingerprints),
        );
      },
      calibrationFingerprintDeleted: (e) async* {
        final successOrFailure =
            await _cfRepository.delete(e.calibrationFingerprintId);
        yield successOrFailure.fold(
          (failure) => CalibrationFingerprintsState.deletionFailure(failure),
          (success) => CalibrationFingerprintsState.deletionSuccess(),
        );
      },
    );
  }
}
