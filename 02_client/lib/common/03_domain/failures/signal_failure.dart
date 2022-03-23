import 'package:freezed_annotation/freezed_annotation.dart';

part 'signal_failure.freezed.dart';

@freezed
abstract class SignalFailure with _$SignalFailure{
  const factory SignalFailure.unexpected() = Unexpected;
  const factory SignalFailure.insufficientPermissions() = InsufficientPermissions;
  const factory SignalFailure.unableToScanNetworks() = UnableToScanNetworks;
}