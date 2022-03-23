part of 'project_form_bloc.dart';

@freezed
abstract class ProjectFormEvent with _$ProjectFormEvent {
  const factory ProjectFormEvent.initialized(Option<Project> initialProjectOption) = _Initialized;
  const factory ProjectFormEvent.nameChanged(String nameStr) = _NameChanged;
  const factory ProjectFormEvent.floorsChanged(KtList<FloorMapPrimitive> floors) = _FloorsChanged;
  const factory ProjectFormEvent.xLengthChanged(String xLengthStr) = _XLengthChanged;
  const factory ProjectFormEvent.yLengthChanged(String yLengthStr) = _YLengthChanged;
  const factory ProjectFormEvent.saved() = _Saved;
  const factory ProjectFormEvent.deleted(UniqueId id) = _Deleted;
}
