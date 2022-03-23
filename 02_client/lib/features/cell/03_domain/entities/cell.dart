import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import '../../../../common/03_domain/entities/position/position.dart';
import '../../../../common/03_domain/failures/failures.dart';
import '../../../../common/03_domain/i_entity.dart';
import '../../../../common/03_domain/value_objects/value_objects.dart';
import '../value_objects/cell_value_objects.dart';

part 'cell.freezed.dart';

@freezed
abstract class Cell with _$Cell implements IEntity {
  const factory Cell({
    @required UniqueId id,
    @required UniqueId projectId,
    @required Name name,
    @required List4<Position> vertices,
  }) = _Cell;

  factory Cell.empty() => Cell(
        id: UniqueId(),
        projectId: UniqueId(),
        name: Name(''),
        vertices: List4(KtList.empty()),
      );
}

extension CellX on Cell {
  Option<ValueFailure<dynamic>> get failureOption {
    return projectId.failureOrUnit
        .andThen(name.failureOrUnit)
        .andThen(vertices
            .getOrCrash()
            .map((vertex) => vertex.failureOption)
            .filter((o) => o.isSome())
            .getOrElse(0, (_) => none())
            .fold(() => right(unit), (f) => left(f)))
        .fold((f) => some(f), (_) => none());
  }
}
