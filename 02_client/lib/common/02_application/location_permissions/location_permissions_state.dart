part of 'location_permissions_bloc.dart';

@freezed
abstract class LocationPermissionsState with _$LocationPermissionsState {
  const factory LocationPermissionsState.undertermined() = Undetermined;
  const factory LocationPermissionsState.permissionsGranted() = PermissionsGranted;
  const factory LocationPermissionsState.permissionsDenied() = PermissionsDenied;
  const factory LocationPermissionsState.updateFailed(String message) = UpdateFailed;
  const factory LocationPermissionsState.wrongPlatform() = WrongPlatform;
}

