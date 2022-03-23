part of 'location_permissions_bloc.dart';

@freezed
abstract class LocationPermissionsEvent with _$LocationPermissionsEvent {
  const factory LocationPermissionsEvent.locationPermissionRequested() = _LocationPermissionRequested;
}
