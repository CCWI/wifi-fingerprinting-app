import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../02_application/location_permissions/location_permissions_bloc.dart';
import 'location_permission_status.dart';

class LocationPermissionInfo extends StatelessWidget
    implements AutoRouteWrapper {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height / 8,
      ),
      child: BlocConsumer<LocationPermissionsBloc, LocationPermissionsState>(
        listener: (context, state) {
          state.maybeMap(
            permissionsDenied: (_) => FlushbarHelper.createError(
              title: 'Info',
              message:
                  'We need location permissions to run this application properly.',
              duration: const Duration(seconds: 2),
            ).show(context),
            permissionsGranted: (_) => FlushbarHelper.createSuccess(
              message: 'Permissions successfully granted!',
              duration: const Duration(seconds: 1),
            ).show(context),
            updateFailed: (_) => FlushbarHelper.createError(
              message: 'Could not get current permissions :(',
              duration: const Duration(seconds: 2),
            ).show(context),
            wrongPlatform: (_) {
              FlushbarHelper.createError(
                title: 'You\'re not using an android device',
                message:
                    'This app is developed for android only and will not work on any other platform. Exiting in 3 seconds.',
                duration: const Duration(seconds: 3),
              ).show(context);
              _exitAfterThreeSeconds();
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.maybeMap(
            permissionsDenied: (_) => LocationPermissionStatus(
              statusText: 'Denied',
              showButton: true,
              onPressed: _onGrantPermissionRequest,
            ),
            undertermined: (_) => LocationPermissionStatus(
              statusText: 'Undetermined',
              showButton: true,
              onPressed: _onGrantPermissionRequest,
            ),
            updateFailed: (_) => LocationPermissionStatus(
              statusText: 'Error',
              showButton: true,
              onPressed: _onGrantPermissionRequest,
            ),
            permissionsGranted: (_) => LocationPermissionStatus(
              statusText: 'Granted',
              showButton: false,
              onPressed: _onGrantPermissionRequest,
            ),
            orElse: () => LocationPermissionStatus(
              statusText: 'Undetermined',
              showButton: true,
              onPressed: _onGrantPermissionRequest,
            ),
          );
        },
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (BuildContext context) => LocationPermissionsBloc()
          ..add(LocationPermissionsEvent.locationPermissionRequested()),
        child: this,
      );

  void _onGrantPermissionRequest(BuildContext context) {
    final permissionsBloc = BlocProvider.of<LocationPermissionsBloc>(context);
    permissionsBloc.add(LocationPermissionsEvent.locationPermissionRequested());
  }

  Future _exitAfterThreeSeconds() {
    return new Future.delayed(const Duration(seconds: 3), () => exit(0));
  }
}
