import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';

import '../../../../common/03_domain/entities/locationdistance/location_distance.dart';
import '../../../../common/03_domain/entities/position/position.dart';
import '../../../../common/03_domain/entities/settings/settings.dart';
import '../../../../common/03_domain/failures/failures.dart';
import '../../../../common/03_domain/i_entity.dart';
import '../../../../common/03_domain/value_objects/value_objects.dart';
import '../../../cell/03_domain/entities/cell.dart';

part 'recalculated_fingerprint.freezed.dart';

@freezed
abstract class RecalculatedFingerprint
    with _$RecalculatedFingerprint
    implements IEntity {
  const factory RecalculatedFingerprint({
    @required UniqueId id,
    @required UniqueId fingerprintBaseId,
    @required UniqueId projectId,
    @required DateTime timeOfCreation,
    @required Settings currentSettings,
    @required KtList<LocationDistance> locationDistances,
    @required KtList<Cell> cellsIncludingPosition,
    @required KtMap<BSSID, RSS> receivedNetworks,
    @required Position calculatedPosition,
  }) = _RecalculatedFingerprint;
}

extension RecalculatedFingerprintX on RecalculatedFingerprint {
  Option<ValueFailure<dynamic>> get failureOption {
    return projectId.failureOrUnit
        .andThen(cellsIncludingPosition
            .map((c) => c.failureOption)
            .filter((o) => o.isSome())
            .getOrElse(0, (_) => none())
            .fold(() => right(unit), (f) => left(f)))
        .andThen(locationDistances
            .map((ld) => ld.failureOption)
            .filter((o) => o.isSome())
            .getOrElse(0, (_) => none())
            .fold(() => right(unit), (f) => left(f)))
        .andThen(receivedNetworks.keys
            .map((ids) => ids.failureOrUnit)
            .filter((o) => o.isLeft())
            .getOrElse(0, (_) => right(unit)))
        .andThen(receivedNetworks.values
            .map((rssValues) => rssValues.failureOrUnit)
            .filter((o) => o.isLeft())
            .getOrElse(0, (_) => right(unit)))
        .andThen(calculatedPosition.failureOption
            .fold(() => right(unit), (f) => left(f)))
        .andThen(currentSettings.failureOption
            .fold(() => right(unit), (f) => left(f)))
        .fold((f) => some(f), (_) => none());
  }
}
