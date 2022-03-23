import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../features/fingerprint/03_domain/failures/fingerprint_failure.dart';
import '../../../features/fingerprint/03_domain/repositories/i_recalculated_fingerprint_repository.dart';
import '../../03_domain/entities/settings/settings.dart';
import '../../03_domain/failures/settings_failure.dart';
import '../../03_domain/repositories/i_settings_repository.dart';
import '../../03_domain/services/location_calculation/i_location_calculation_service.dart';

part 'settings_bloc.freezed.dart';
part 'settings_event.dart';
part 'settings_state.dart';

@injectable
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final ISettingsRepository _sRepository;
  final IRecalculatedFingerprintRepository _rfRepository;
  final ILocationCalculationService _locService;

  SettingsBloc({
    @required ISettingsRepository sRepository,
    @required IRecalculatedFingerprintRepository rfRepository,
    @required ILocationCalculationService locService,
  })  : assert(sRepository != null),
        assert(rfRepository != null),
        assert(locService != null),
        _sRepository = sRepository,
        _rfRepository = rfRepository,
        _locService = locService,
        super(SettingsState.initial());

  @override
  Stream<SettingsState> mapEventToState(
    SettingsEvent event,
  ) async* {
    yield* event.map(initialized: (e) async* {
      yield SettingsState.loadInProgress();

      final failureOrSettings = await _sRepository.getSettings();

      yield failureOrSettings.fold(
        (failure) => SettingsState.settingsLoadFailure(failure),
        (settings) => SettingsState.settingsLoadSuccess(settings),
      );
    }, saved: (e) async* {
      final failureOrUnit = await _sRepository.saveSettings(e.settings);

      yield failureOrUnit.fold(
        (failure) => SettingsState.settingsSaveFailure(failure),
        (_) => SettingsState.settingsSaveSuccess(e.settings),
      );
    }, fingerprintsRecalculated: (e) async* {
      yield SettingsState.recalculationLoadInProgress();

      final failureOrSettings = await _sRepository.getSettings();

      yield* failureOrSettings.fold(
        (failure) async* {
          yield SettingsState.recalculationLoadInProgress();
        },
        (settings) async* {
          final recalculatedFingerprints =
              await _locService.recalculateAllFingerprints(settings);

          if (recalculatedFingerprints != null) {
            final collectionName =
                "recalc_fp_algo${(settings.locationAlgorithm.index + 1).toString()}_kVal${settings.knnKValue.getOrCrash().toString()}";

            final failureOrSuccess =
                await _rfRepository.createRecalculatedFingerprints(
                    recalculatedFingerprints, collectionName);

            yield failureOrSuccess.fold(
              (failure) => SettingsState.recalculationSaveFailure(failure),
              (success) => SettingsState.recalculationSaveSuccess(settings),
            );
          } else {
            yield SettingsState.recalculationSaveFailure(
                const FingerprintFailure.unexpected());
          }
        },
      );
    });
  }
}
