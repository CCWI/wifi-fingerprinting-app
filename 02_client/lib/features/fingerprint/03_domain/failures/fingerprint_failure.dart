import 'package:freezed_annotation/freezed_annotation.dart';

part 'fingerprint_failure.freezed.dart';

@freezed
abstract class FingerprintFailure with _$FingerprintFailure{
  const factory FingerprintFailure.unexpected() = Unexpected;
  const factory FingerprintFailure.insufficientPermissions() = InsufficientPermissions;
  const factory FingerprintFailure.unableToUpdate() = UnableToUpdate;
  const factory FingerprintFailure.unableToRead() = UnableToRead;
  const factory FingerprintFailure.unableToDelete() = UnableToDelete;
}