import 'package:freezed_annotation/freezed_annotation.dart';

part 'access_point_failures.freezed.dart';

@freezed
abstract class AccessPointFailure with _$AccessPointFailure{
  const factory AccessPointFailure.unexpected() = Unexpected;
  const factory AccessPointFailure.insufficientPermissions() = InsufficientPermissions;
  const factory AccessPointFailure.unableToUpdate() = UnableToUpdate;
  const factory AccessPointFailure.unableToRead() = UnableToRead;
  const factory AccessPointFailure.unableToDelete() = UnableToDelete;
}