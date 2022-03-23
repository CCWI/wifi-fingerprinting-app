part of 'calibration_point_form_bloc.dart';

@freezed
abstract class CalibrationPointFormEvent with _$CalibrationPointFormEvent {
  const factory CalibrationPointFormEvent.initialized(Option<CalibrationPoint> initialCalibrationPointOption, UniqueId projectId) = _Initialized;
  const factory CalibrationPointFormEvent.nameChanged(String nameStr) = _NameChanged;
  const factory CalibrationPointFormEvent.xPosChanged(String xPosStr) = _XPosChanged;
  const factory CalibrationPointFormEvent.yPosChanged(String yPosStr) = _YPosChanged;
  const factory CalibrationPointFormEvent.floorChanged(String floorStr) = _FloorChanged;
  const factory CalibrationPointFormEvent.saved() = _Saved;
  const factory CalibrationPointFormEvent.deleted(UniqueId id) = _Deleted;
}
