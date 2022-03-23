import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../features/access_point/03_domain/entities/access_point.dart';
import '../../failures/failures.dart';
import '../../value_objects/signal_value_objects.dart';
import '../../value_objects/value_objects.dart';

part 'signal.freezed.dart';

@freezed
abstract class Signal with _$Signal {
  const factory Signal({
    @required SSID ssid,
    @required BSSID bssid,
    @required RSS rss,
    @required Frequency frequency,
  }) = _Signal;
}

extension SignalX on Signal {
  Option<ValueFailure<dynamic>> get failureOption {
    return ssid.failureOrUnit
        .andThen(bssid.failureOrUnit)
        .andThen(rss.failureOrUnit)
        .andThen(frequency.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }

  AccessPoint toEmptyAccessPoint() {
    return AccessPoint(
      id: UniqueId(),
      projectId: UniqueId(),
      name: Name(''),
      ssid: ssid,
      bssid: bssid,
    );
  }
}
