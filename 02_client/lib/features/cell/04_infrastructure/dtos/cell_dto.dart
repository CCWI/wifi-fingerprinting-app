import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import '../../../../common/03_domain/value_objects/value_objects.dart';
import '../../../../common/04_infrastructure/dtos/i_dto.dart';
import '../../../../common/04_infrastructure/dtos/position/position_dto.dart';
import '../../03_domain/entities/cell.dart';
import '../../03_domain/value_objects/cell_value_objects.dart';

part 'cell_dto.freezed.dart';
part 'cell_dto.g.dart';

@freezed
abstract class CellDto with _$CellDto implements IDto {
  factory CellDto({
    @required String id,
    @required String projectId,
    @required String name,
    @required List<PositionDto> vertices,
  }) = _CellDto;

  factory CellDto.fromDomain(Cell cell) {
    return CellDto(
      id: cell.id.getOrCrash(),
      projectId: cell.projectId.getOrCrash(),
      name: cell.name.getOrCrash(),
      vertices: cell.vertices
          .getOrCrash()
          .mapIndexed((index, vertex) => PositionDto.fromDomain(vertex))
          .asList(),
    );
  }

  factory CellDto.fromJson(Map<String, dynamic> json) =>
      _$CellDtoFromJson(json);

  factory CellDto.fromFirestore(DocumentSnapshot doc) {
    return CellDto.fromJson(doc.data()).copyWith(id: doc.id);
  }
}

extension CellDtoX on CellDto {
  Cell toDomain() {
    return Cell(
      id: UniqueId.fromFirebaseId(id),
      projectId: UniqueId.fromFirebaseId(projectId),
      name: Name(name),
      vertices:
          List4(vertices.map((vertex) => vertex.toDomain()).toImmutableList()),
    );
  }
}
