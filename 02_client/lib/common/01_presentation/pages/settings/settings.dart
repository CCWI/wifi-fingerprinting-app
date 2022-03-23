import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wifi_fingerprinting/common/01_presentation/routes/router.gr.dart';

import '../../../02_application/settings/settings_bloc.dart';
import '../../../03_domain/entities/settings/settings.dart' as entity;
import '../../../05_utils/injection/inject.dart';
import '../../widgets/app_scaffold.dart';
import '../../widgets/centered_loading_screen.dart';
import '../../widgets/empty.dart';
import 'widgets/settings_tiles.dart';

class Settings extends StatelessWidget implements AutoRouteWrapper {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: Text('Settings'),
      bodyColor: Theme.of(context).accentColor,
      body: BlocConsumer<SettingsBloc, SettingsState>(
        listener: (context, state) {
          state.maybeMap(
            recalculationLoadInProgress: (_) => FlushbarHelper.createLoading(
              title: 'Recalculating Fingerprints..',
              message: 'This may take a while',
              duration: null,
              linearProgressIndicator: LinearProgressIndicator(
                value: null,
              ),
            ).show(context),
            recalculationSaveSuccess: (_) {
              ExtendedNavigator.of(context)
                  .popUntil((route) => route.settings.name == Routes.settings);
              FlushbarHelper.createSuccess(
                title: 'Calculation Success',
                message:
                    'All fingerprints have been recalculated successfully.',
                duration: const Duration(seconds: 2),
              ).show(context);
            },
            recalculationSaveFailure: (f) {
              ExtendedNavigator.of(context)
                  .popUntil((route) => route.settings.name == Routes.settings);
              FlushbarHelper.createError(
                title: 'Calculation Error',
                message: f.failure.maybeMap(
                    unexpected: (_) => 'Unexpected Error',
                    insufficientPermissions: (_) => 'Insufficient Permissions',
                    orElse: () => 'Unexpected Error'),
              ).show(context);
            },
            settingsLoadFailure: (f) {
              FlushbarHelper.createError(
                title: 'Calculation Error',
                message: f.failure.maybeMap(
                    unableToSafe: (_) => 'Unable to save settings',
                    unexpected: (_) => 'Unexpected Error',
                    orElse: () => 'Unexpected Error'),
              ).show(context);
            },
            orElse: () => null,
          );
        },
        builder: (context, state) {
          return state.maybeMap(
            initial: (s) => CenteredLoadingScreen(),
            loadInProgress: (s) => CenteredLoadingScreen(),
            settingsLoadSuccess: (s) => SettingsTiles(
              onSave: (s) => _onSave(context, s),
              settings: s.settings,
            ),
            settingsSaveSuccess: (s) => SettingsTiles(
              onSave: (s) => _onSave(context, s),
              settings: s.savedSettings,
            ),
            recalculationSaveSuccess: (s) => SettingsTiles(
              onSave: (s) => _onSave(context, s),
              settings: s.settingsToDisplay,
            ),
            orElse: () => Empty(),
          );
        },
      ),
      fab: BlocBuilder<SettingsBloc, SettingsState>(
        buildWhen: (p, c) => p != c,
        builder: (context, state) {
          return state.maybeMap(
            settingsSaveSuccess: (_) => MaterialButton(
              onPressed: () => _onRecalculateFingerprints(context),
              child: Text('RECALCULATE FINGERPRINTS'),
              color: Colors.red,
              height: 60.0,
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
        create: (context) =>
            getIt<SettingsBloc>()..add(SettingsEvent.initialized()),
        child: this,
      );

  void _onSave(BuildContext context, entity.Settings settings) {
    final settingsBloc = context.bloc<SettingsBloc>();
    settingsBloc.add(SettingsEvent.saved(settings));
  }

  void _onRecalculateFingerprints(BuildContext context) {
    final settingsBloc = context.bloc<SettingsBloc>();
    settingsBloc.add(SettingsEvent.fingerprintsRecalculated());
  }
}
