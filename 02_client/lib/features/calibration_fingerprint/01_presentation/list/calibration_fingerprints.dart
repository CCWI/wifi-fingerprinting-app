import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/01_presentation/routes/router.gr.dart';
import '../../../../common/01_presentation/widgets/app_scaffold.dart';
import '../../../../common/01_presentation/widgets/centered_loading_screen.dart';
import '../../../../common/01_presentation/widgets/delete_alert_dialog.dart';
import '../../../../common/03_domain/value_objects/value_objects.dart';
import '../../../../common/05_utils/injection/inject.dart';
import '../../02_application/list/calibration_fingerprints_bloc.dart';
import '../../03_domain/entities/calibration_fingerprint.dart';
import 'widgets/calibration_fingerprint_list.dart';

class CalibrationFingerprints extends StatelessWidget
    implements AutoRouteWrapper {
  final UniqueId projectId;
  final UniqueId calibrationPointId;

  const CalibrationFingerprints({
    Key key,
    this.projectId,
    this.calibrationPointId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: Text('Calibration Fingerprints'),
      bodyColor: Theme.of(context).primaryColor,
      body: BlocConsumer<CalibrationFingerprintsBloc,
          CalibrationFingerprintsState>(
        listener: (context, state) {
          state.maybeMap(
            loadFailure: (state) {
              FlushbarHelper.createError(
                message: state.calibrationFingerprintFailure.maybeMap(
                  insufficientPermissions: (_) => 'Insufficient permissions',
                  unableToRead: (_) => 'Could not read falibration data.',
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
              return CalibrationFingerprintList(
                calibrationFingerprints: state.calibrationFingerprints,
                onLongPress: (calibrationFingerprint, context) =>
                    _onLongPress(calibrationFingerprint, context),
              );
            },
            orElse: () => null,
          );
        },
      ),
      fab: FloatingActionButton(
        onPressed: () => _onAddNewCalibrationFingerprint(context),
        child: Icon(Icons.add),
        tooltip: 'Add new calibration fingerprint',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) => getIt<CalibrationFingerprintsBloc>()
          ..add(CalibrationFingerprintsEvent.watchAllStarted(calibrationPointId)),
        child: this,
      );

  void _onAddNewCalibrationFingerprint(BuildContext context) {
    ExtendedNavigator.of(context).push(
      Routes.calibrationFingerprintForm,
      arguments: CalibrationFingerprintFormArguments(
        projectId: projectId,
        calibrationPointId: calibrationPointId,
      ),
    );
  }

  void _onDeleteCalibrationFingerprint(BuildContext context, UniqueId id) {
    final calibrationFingerprintBloc =
        context.bloc<CalibrationFingerprintsBloc>();
    calibrationFingerprintBloc
        .add(CalibrationFingerprintsEvent.calibrationFingerprintDeleted(id));
  }

  Future<DeleteAlertDialog> _onLongPress(
      CalibrationFingerprint calibrationFingerprint, BuildContext context) {
    return showDialog(
      context: context,
      builder: (_) => DeleteAlertDialog(
        title: 'Delete Calibration Fingerprint?',
        content: 'Do your really want to delete this fingerprint?',
        withInput: true,
        textToMatch: 'Delete',
        deleteCall: () =>
            _onDeleteCalibrationFingerprint(context, calibrationFingerprint.id),
      ),
    );
  }
}
