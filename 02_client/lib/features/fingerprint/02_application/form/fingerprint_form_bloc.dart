import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';

import '../../../../common/03_domain/entities/position/position.dart';
import '../../../../common/03_domain/repositories/i_settings_repository.dart';
import '../../../../common/03_domain/repositories/i_signal_repository.dart';
import '../../../../common/03_domain/services/location_calculation/i_location_calculation_service.dart';
import '../../../../common/03_domain/value_objects/value_objects.dart';
import '../../../cell/03_domain/entities/cell.dart';
import '../../03_domain/entities/fingerprint.dart';
import '../../03_domain/failures/fingerprint_failure.dart';
import '../../03_domain/repositories/i_fingerprint_repository.dart';

part 'fingerprint_form_bloc.freezed.dart';
part 'fingerprint_form_event.dart';
part 'fingerprint_form_state.dart';

@injectable
class FingerprintFormBloc
    extends Bloc<FingerprintFormEvent, FingerprintFormState> {
  final ILocationCalculationService _locationCalculationService;
  final ISettingsRepository _sRepository;
  final IFingerprintRepository _fRepository;
  final ISignalRepository _signalRepository;
  Fingerprint _fingerprintToSave;

  FingerprintFormBloc({
    @required ILocationCalculationService locationCalculationService,
    @required ISettingsRepository sRepository,
    @required IFingerprintRepository fRepository,
    @required ISignalRepository signalRepository,
  })  : assert(locationCalculationService != null),
        assert(sRepository != null),
        assert(fRepository != null),
        assert(signalRepository != null),
        _locationCalculationService = locationCalculationService,
        _sRepository = sRepository,
        _fRepository = fRepository,
        _signalRepository = signalRepository,
        super(FingerprintFormState.initial());

  @override
  Stream<FingerprintFormState> mapEventToState(
    FingerprintFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield FingerprintFormState.loadInProgress();

        final failureOrSignals = await _signalRepository.fetchSignals();

        yield* failureOrSignals.fold(
          (f) async* {
            yield FingerprintFormState.calculationFailure(
                FingerprintFailure.unableToRead());
          },
          (signals) async* {
            final failureOrSettings = await _sRepository.getSettings();

            yield* failureOrSettings.fold(
              (failure) async* {
                yield FingerprintFormState.calculationFailure(
                    FingerprintFailure.unexpected());
              },
              (settings) async* {
                final fingerprint = await _locationCalculationService
                    .calculateLocation(signals, e.projectId, settings);
                _fingerprintToSave = fingerprint;
                yield FingerprintFormState.calculatedPosition(
                  fingerprint.calculatedPosition,
                  fingerprint.cellsIncludingPosition,
                );
              },
            );
          },
        );
      },
      saved: (e) async* {
        final failureOrSaved = await _fRepository.create(_fingerprintToSave);

        yield failureOrSaved.fold(
          (failure) => FingerprintFormState.calculationFailure(failure),
          (saved) => FingerprintFormState.savingSuccess(),
        );
      },
    );
  }
}
