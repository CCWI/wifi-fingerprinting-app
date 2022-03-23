import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:permission_handler/permission_handler.dart';

part 'location_permissions_bloc.freezed.dart';
part 'location_permissions_event.dart';
part 'location_permissions_state.dart';

class LocationPermissionsBloc
    extends Bloc<LocationPermissionsEvent, LocationPermissionsState> {
  LocationPermissionsBloc() : super(LocationPermissionsState.undertermined());

  @override
  Stream<LocationPermissionsState> mapEventToState(
    LocationPermissionsEvent event,
  ) async* {
    if (!Platform.isAndroid) {
      yield LocationPermissionsState.wrongPlatform();
    }
    final stati = await [
      Permission.location,
      Permission.locationAlways,
    ].request();
    if (stati.containsValue(PermissionStatus.denied) ||
        stati.containsValue(PermissionStatus.permanentlyDenied) ||
        stati.containsValue(PermissionStatus.restricted)) {
      yield LocationPermissionsState.permissionsDenied();
    } else if (!stati.containsValue(PermissionStatus.undetermined)) {
      yield LocationPermissionsState.permissionsGranted();
    } else {
      yield LocationPermissionsState.updateFailed(
          'Could not get current permissions');
    }
  }
}
