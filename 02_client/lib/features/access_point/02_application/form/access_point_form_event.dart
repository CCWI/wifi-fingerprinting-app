part of 'access_point_form_bloc.dart';

@freezed
abstract class AccessPointFormEvent with _$AccessPointFormEvent {
  const factory AccessPointFormEvent.initialized(Option<AccessPoint> initialAccessPointOption, UniqueId projectId) = _Initialized;
  const factory AccessPointFormEvent.nameChanged(String nameStr) = _NameChanged;
  const factory AccessPointFormEvent.saved() = _Saved;
  const factory AccessPointFormEvent.deleted(UniqueId id) = _Deleted;
}
