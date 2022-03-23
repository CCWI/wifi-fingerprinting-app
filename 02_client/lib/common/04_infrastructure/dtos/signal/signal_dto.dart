import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../03_domain/entities/signal/signal.dart';
import '../../../03_domain/value_objects/signal_value_objects.dart';
import '../../../03_domain/value_objects/value_objects.dart';

part 'signal_dto.freezed.dart';
part 'signal_dto.g.dart';


@freezed
abstract class SignalDto with _$SignalDto {
  factory SignalDto({
    @required String ssid,
    @required String bssid,
    @required double rss,
    @required int frequency,
  }) = _SignalDto;

  factory SignalDto.fromDomain(Signal signal) {
    return SignalDto(
      ssid: signal.ssid.getOrCrash(),
      bssid: signal.bssid.getOrCrash(),
      rss: signal.rss.getOrCrash(),
      frequency: signal.frequency.getOrCrash(),
    );
  }

  factory SignalDto.fromJson(Map<String, dynamic> json) => _$SignalDtoFromJson(json);
}

extension SignalDtoX on SignalDto {
  Signal toDomain() {
    return Signal(
      ssid: SSID(ssid),
      bssid: BSSID(bssid),
      rss: RSS(rss),
      frequency: Frequency(frequency),
    );
    
  }
}