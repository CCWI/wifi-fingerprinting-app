import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/01_presentation/widgets/app_scaffold.dart';
import '../../../../common/01_presentation/widgets/centered_loading_screen.dart';
import '../../../../common/01_presentation/widgets/empty.dart';
import '../../../../common/01_presentation/widgets/networks_list.dart';
import '../../../../common/03_domain/value_objects/value_objects.dart';
import '../../../../common/05_utils/injection/inject.dart';
import '../../02_application/form/calibration_fingerprint_form_bloc.dart';

class CalibrationFingerprintForm extends StatelessWidget
    implements AutoRouteWrapper {
  final UniqueId calibrationPointId;
  final UniqueId projectId;

  const CalibrationFingerprintForm({
    Key key,
    this.calibrationPointId,
    this.projectId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: Text('New Calibration Fingerprint'),
      bodyColor: Theme.of(context).accentColor,
      body: BlocConsumer<CalibrationFingerprintFormBloc,
          CalibrationFingerprintFormState>(
        listener: (context, state) {
          state.maybeMap(
            signalLoadFailure: (loadFailure) {
              FlushbarHelper.createError(
                message: loadFailure.failure.map(
                  unexpected: (_) =>
                      'Unexpected error occured while scanning networks',
                  insufficientPermissions: (_) =>
                      'Cannot scan networks. Are location permissions granted?',
                  unableToScanNetworks: (_) => 'Could not scan networks.',
                ),
                duration: const Duration(seconds: 2),
              ).show(context);
            },
            saveCalibrationFingerprintFailure: (saveFailure) {
              FlushbarHelper.createError(
                title: 'Could not create calibration fingerprint',
                message: saveFailure.failure.maybeMap(
                  unexpected: (_) => 'Unexpected error occured while saving.',
                  insufficientPermissions: (_) =>
                      'Could not save calibration fingerprint because of insufficient permissions',
                  unableToUpdateAccessPoints: (updateFailure) {
                    return updateFailure.accessPointFailure.maybeMap(
                      unexpected: (_) =>
                          'Unexpected error occured while trying to add the currently fetched new networks to database',
                      insufficientPermissions: (_) =>
                          'Could not add currently fetched networks to database due to insufficient permissions.',
                      unableToUpdate: (_) => 'Could not update access points',
                      orElse: () => 'Error currently not specified. Sorry!',
                    );
                  },
                  unableToUpdateRadioMap: (updateFailure) {
                    return updateFailure.calibrationPointFailure.maybeMap(
                      unexpected: (_) =>
                          'Unexpected error occured while updating the radio map.',
                      insufficientPermissions: (_) =>
                          'Could not update the radio map due to insufficient permissions.',
                      unableToUpdate: (_) => 'Could not update the radio map.',
                      orElse: () => 'Error currently not specified. Sorry!',
                    );
                  },
                  orElse: () => 'Error currently not specified. Sorry!',
                ),
                duration: const Duration(seconds: 2),
              ).show(context);
            },
            saveCalibrationFingerprintSuccess: (_) =>
                ExtendedNavigator.of(context).pop(),
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.maybeMap(
            initial: (_) => CenteredLoadingScreen(),
            signalLoadInProgress: (_) => CenteredLoadingScreen(),
            signalLoadSuccess: (success) => NetworksList(
              networks: success.signals,
              refreshAllowed: false,
            ),
            orElse: () => Container(),
          );
        },
      ),
      fab: BlocBuilder<CalibrationFingerprintFormBloc,
          CalibrationFingerprintFormState>(
        builder: (context, state) {
          return state.maybeMap(
            signalLoadSuccess: (_) => FloatingActionButton.extended(
              backgroundColor: Theme.of(context).primaryColor,
              label: Text('ADD CALIBRATION FINGERPRINT'),
              icon: Icon(Icons.add),
              onPressed: () => _onCalibrationFingerprintSave(context),
            ),
            orElse: () => Empty(),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) => getIt<CalibrationFingerprintFormBloc>()
          ..add(CalibrationFingerprintFormEvent.initialized(
              calibrationPointId, projectId)),
        child: this,
      );

  //
  // @override
  // Widget wrappedRoute(BuildContext context) => BlocProvider(
  //       create: (context) => CalibrationFingerprintFormBloc(
  //         sRepository: SignalRepository(),
  //         cfService: CalibrationFingerprintCloudService(
  //           cpCloudRepository: CalibrationFingerprintCloudRepository(),
  //         ),
  //       )..add(CalibrationFingerprintFormEvent.initialized(
  //           calibrationPointId, projectId)),
  //       child: this,
  //     );

  void _onCalibrationFingerprintSave(BuildContext context) {
    final calibrationFingerprintBloc =
        context.bloc<CalibrationFingerprintFormBloc>();
    calibrationFingerprintBloc.add(CalibrationFingerprintFormEvent.saved());
  }
}
