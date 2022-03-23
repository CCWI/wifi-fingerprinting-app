import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/01_presentation/pages/map_picker/map_picker.dart';
import '../../../../common/01_presentation/routes/router.gr.dart';
import '../../../../common/01_presentation/widgets/centered_loading_screen.dart';
import '../../../../common/01_presentation/widgets/empty.dart';
import '../../../../common/03_domain/value_objects/value_objects.dart';
import '../../../../common/05_utils/injection/inject.dart';
import '../../02_application/form/fingerprint_form_bloc.dart';

class FingerprintForm extends StatelessWidget implements AutoRouteWrapper {
  final UniqueId projectId;

  const FingerprintForm({
    Key key,
    this.projectId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FingerprintFormBloc, FingerprintFormState>(
      listener: (context, state) {
        print(state);
        state.maybeMap(
            savingSuccess: (_) {
              ExtendedNavigator.of(context).popUntil(
                  (route) => route.settings.name == Routes.projectMenu);
            },
            calculationFailure: (f) {
              FlushbarHelper.createError(
                duration: const Duration(seconds: 3),
                message: f.failure.maybeMap(
                  insufficientPermissions: (_) => 'Insufficient permissions',
                  unableToUpdate: (_) => 'Couldn\'t update the access point',
                  unexpected: (_) => 'Unexpected error occured',
                  orElse: () => '',
                ),
              ).show(context);
            },
            orElse: () => {});
      },
      builder: (context, state) {
        return state.maybeMap(
            initial: (_) => CenteredLoadingScreen(),
            loadInProgress: (_) => CenteredLoadingScreen(),
            calculatedPosition: (s) {
              return MapPickerResult(
                projectId: this.projectId,
                positionToShow: s.position,
                cellsIncludingPosition: s.cellsIncludingPosition,
                onAccept: (_) => _onSave(context),
                onCancel: () => _onSave(context),
              );
            },
            orElse: () => Empty());
      },
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) => getIt<FingerprintFormBloc>()
          ..add(FingerprintFormEvent.initialized(projectId)),
        child: this,
      );

  void _onSave(BuildContext context) {
    final fingerprintFormBloc = context.bloc<FingerprintFormBloc>();
    fingerprintFormBloc.add(FingerprintFormEvent.saved());
  }
}
