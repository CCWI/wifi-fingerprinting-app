import 'package:freezed_annotation/freezed_annotation.dart';

part 'cell_failure.freezed.dart';

@freezed
abstract class CellFailure with _$CellFailure{
  const factory CellFailure.unexpected() = Unexpected;
  const factory CellFailure.insufficientPermissions() = InsufficientPermissions;
  const factory CellFailure.unableToUpdate() = UnableToUpdate;
  const factory CellFailure.unableToRead() = UnableToRead;
  const factory CellFailure.unableToDelete() = UnableToDelete;
}