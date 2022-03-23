part of 'cell_form_bloc.dart';

@freezed
abstract class CellFormEvent with _$CellFormEvent {
  const factory CellFormEvent.initialized(Option<Cell> initialCellOption, UniqueId projectId) = _Initialized;
  const factory CellFormEvent.nameChanged(String nameStr) = _NameChanged;
  const factory CellFormEvent.floorChanged(String floorStr) = _FloorChanged;
  const factory CellFormEvent.verticesChanged(KtList<VertexPrimitive> vertices) = _VerticesChanged;
  const factory CellFormEvent.saved() = _Saved;
  const factory CellFormEvent.deleted(UniqueId id) = _Deleted;
}
