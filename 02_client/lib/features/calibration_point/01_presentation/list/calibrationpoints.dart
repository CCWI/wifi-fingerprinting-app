import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/01_presentation/routes/router.gr.dart';
import '../../../../common/01_presentation/widgets/app_scaffold.dart';
import '../../../../common/01_presentation/widgets/centered_loading_screen.dart';
import '../../../../common/03_domain/value_objects/value_objects.dart';
import '../../../../common/05_utils/injection/inject.dart';
import '../../02_application/list/calibration_points_bloc.dart';
import '../../03_domain/entities/calibration_point.dart';
import 'widgets/calibration_point_list.dart';

class CalibrationPoints extends StatelessWidget implements AutoRouteWrapper {
  final UniqueId projectId;

  const CalibrationPoints({
    Key key,
    this.projectId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: Text('Calibration Points'),
      bodyColor: Theme.of(context).primaryColor,
      body: BlocConsumer<CalibrationPointsBloc, CalibrationPointsState>(
        listener: (context, state) {
          state.maybeMap(
            loadFailure: (state) {
              FlushbarHelper.createError(
                message: state.calibrationPointFailure.maybeMap(
                  insufficientPermissions: (_) => 'Insufficient permissions',
                  unableToRead: (_) => 'Could not read calibration points.',
                  unexpected: (_) => 'Unexpected error occured while reading.',
                  orElse: () => null,
                ),
              ).show(context);
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.maybeMap(
            initial: (_) => CenteredLoadingScreen(),
            loadInProgress: (_) => CenteredLoadingScreen(),
            loadSuccess: (state) {
              return CalibrationPointList(
                calibrationPoints: state.calibrationPoints,
                onLongPress: (calibrationPoint) =>
                    _onEditCalibrationPoint(calibrationPoint, context),
                onTap: (calibrationPoint) =>
                    _onWatchCalibrationData(calibrationPoint, context),
              );
            },
            orElse: () => Container(),
          );
        },
      ),
      fab: FloatingActionButton(
        onPressed: () => _onAddNewCalibrationPoint(context),
        child: Icon(Icons.add),
        tooltip: 'Add new access point',
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) => getIt<CalibrationPointsBloc>()
          ..add(CalibrationPointsEvent.watchAllStarted(projectId)),
        child: this,
      );

  void _onEditCalibrationPoint(
      CalibrationPoint calibrationPointToEdit, BuildContext context) {
    ExtendedNavigator.of(context).push(
      Routes.calibrationPointForm,
      arguments: CalibrationPointFormArguments(
        projectId: projectId,
        editedCalibrationPoint: calibrationPointToEdit,
      ),
    );
  }

  void _onWatchCalibrationData(
      CalibrationPoint calibrationPointToWatch, BuildContext context) {
    ExtendedNavigator.of(context).push(
      Routes.calibrationFingerprints,
      arguments: CalibrationFingerprintsArguments(
        projectId: projectId,
        calibrationPointId: calibrationPointToWatch.id,
      ),
    );
  }

  void _onAddNewCalibrationPoint(BuildContext context) {
    ExtendedNavigator.of(context).push(
      Routes.calibrationPointForm,
      arguments: CalibrationPointFormArguments(
        projectId: projectId,
      ),
    );
  }
}
