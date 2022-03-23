import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

import '../../../../common/03_domain/value_objects/value_objects.dart';
import '../../03_domain/entities/calibration_point.dart';
import '../../03_domain/failures/calibration_point_failure.dart';
import '../../03_domain/repositories/i_calibration_point_repository.dart';

part 'calibration_points_bloc.freezed.dart';
part 'calibration_points_event.dart';
part 'calibration_points_state.dart';

@injectable
class CalibrationPointsBloc
    extends Bloc<CalibrationPointsEvent, CalibrationPointsState> {
  final ICalibrationPointRepository _cpRepository;
  StreamSubscription<Either<CalibrationPointFailure, KtList<CalibrationPoint>>>
      _cpSubscription;

  CalibrationPointsBloc({@required ICalibrationPointRepository cpRepository})
      : assert(cpRepository != null),
        _cpRepository = cpRepository,
        super(CalibrationPointsState.initial());

  @override
  Stream<CalibrationPointsState> mapEventToState(
    CalibrationPointsEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const CalibrationPointsState.loadInProgress();
        await _cpSubscription?.cancel();
        _cpSubscription = _cpRepository.watchAllFromProject(e.projectId).listen(
            (calibrationPoints) => add(
                CalibrationPointsEvent.calibrationPointsReceived(
                    calibrationPoints)));
      },
      calibrationPointsReceived: (e) async* {
        yield e.failureOrCalibrationPoints.fold(
          (f) => CalibrationPointsState.loadFailure(f),
          (calibrationPoints) =>
              CalibrationPointsState.loadSuccess(calibrationPoints),
        );
      },
    );
  }
}
