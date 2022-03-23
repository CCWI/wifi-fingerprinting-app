import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../common/03_domain/value_objects/value_objects.dart';
import '../../../project/03_domain/repositories/i_project_repository.dart';
import '../../03_domain/entities/calibration_point.dart';
import '../../03_domain/failures/calibration_point_failure.dart';
import '../../03_domain/repositories/i_calibration_point_repository.dart';

part 'calibration_point_form_bloc.freezed.dart';
part 'calibration_point_form_event.dart';
part 'calibration_point_form_state.dart';

@injectable
class CalibrationPointFormBloc
    extends Bloc<CalibrationPointFormEvent, CalibrationPointFormState> {
  final ICalibrationPointRepository _apRepository;
  final IProjectRepository _pRepository;
  Offset _cartesianDimensions;
  UniqueId projectId;

  CalibrationPointFormBloc({
    @required ICalibrationPointRepository apRepository,
    @required IProjectRepository pRepository,
  })  : assert(apRepository != null),
        assert(pRepository != null),
        _apRepository = apRepository,
        _pRepository = pRepository,
        super(CalibrationPointFormState.initial());

  @override
  Stream<CalibrationPointFormState> mapEventToState(
    CalibrationPointFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield* e.initialCalibrationPointOption.fold(
          () async* {
            projectId = e.projectId;
            await _setCartesianDimensions();
            yield state.copyWith(
              calibrationPoint: state.calibrationPoint.copyWith(
                projectId: e.projectId,
              ),
              saveFailureOrSuccessOption: none(),
            );
          },
          (initialCalibrationPoint) async* {
            projectId = initialCalibrationPoint.projectId;
            await _setCartesianDimensions();
            yield state.copyWith(
              calibrationPoint: initialCalibrationPoint.copyWith(
                projectId: e.projectId,
              ),
              isEditing: initialCalibrationPoint.projectId == e.projectId,
            );
          },
        );
      },
      nameChanged: (e) async* {
        yield state.copyWith(
          calibrationPoint: state.calibrationPoint.copyWith(
            name: Name(e.nameStr),
          ),
          saveFailureOrSuccessOption: none(),
        );
      },
      xPosChanged: (e) async* {
        yield state.copyWith(
          calibrationPoint: state.calibrationPoint.copyWith(
            position: state.calibrationPoint.position.copyWith(
              x: _cartesianDimensions != null
                  ? CoordinateValue.fromStringWithMax(
                      e.xPosStr, _cartesianDimensions.dx)
                  : CoordinateValue.fromString(e.xPosStr),
            ),
          ),
          saveFailureOrSuccessOption: none(),
        );
      },
      yPosChanged: (e) async* {
        yield state.copyWith(
          calibrationPoint: state.calibrationPoint.copyWith(
            position: state.calibrationPoint.position.copyWith(
              y: _cartesianDimensions != null
                  ? CoordinateValue.fromStringWithMax(
                      e.yPosStr, _cartesianDimensions.dy)
                  : CoordinateValue.fromString(e.yPosStr),
            ),
          ),
          saveFailureOrSuccessOption: none(),
        );
      },
      floorChanged: (e) async* {
        yield state.copyWith(
          calibrationPoint: state.calibrationPoint.copyWith(
            position: state.calibrationPoint.position.copyWith(
              floor: FloorNumber.fromString(e.floorStr),
            ),
          ),
          saveFailureOrSuccessOption: none(),
        );
      },
      saved: (e) async* {
        Either<CalibrationPointFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );

        if (state.calibrationPoint.failureOption.isNone()) {
          failureOrSuccess = state.isEditing
              ? await _apRepository.update(state.calibrationPoint)
              : await _apRepository.create(state.calibrationPoint);
        }

        yield state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      deleted: (e) async* {
        Either<CalibrationPointFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isDeleting: true,
          deleteFailureOrSuccessOption: none(),
        );

        failureOrSuccess = await _apRepository.delete(e.id);

        yield state.copyWith(
          isDeleting: false,
          showErrorMessages: false,
          deleteFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }

  Future _setCartesianDimensions() async {
    final failureOrCoordinateValues =
        await _pRepository.readCartesianDimensionsById(projectId);
    _cartesianDimensions = failureOrCoordinateValues.fold(
        (failure) => null, (cartesianDimensions) => cartesianDimensions);
  }
}
