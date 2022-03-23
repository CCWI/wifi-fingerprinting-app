import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';

import '../../../../common/03_domain/entities/position/position.dart';
import '../../../../common/03_domain/value_objects/value_objects.dart';
import '../../../project/03_domain/repositories/i_project_repository.dart';
import '../../01_presentation/form/misc/vertices_presentation_class.dart';
import '../../03_domain/entities/cell.dart';
import '../../03_domain/failures/cell_failure.dart';
import '../../03_domain/repositories/i_cell_repository.dart';
import '../../03_domain/value_objects/cell_value_objects.dart';

part 'cell_form_bloc.freezed.dart';
part 'cell_form_event.dart';
part 'cell_form_state.dart';

@injectable
class CellFormBloc extends Bloc<CellFormEvent, CellFormState> {
  final ICellRepository _cRepository;
  final IProjectRepository _pRepository;
  Offset _cartesianDimensions;
  UniqueId projectId;

  CellFormBloc({
    @required ICellRepository cRepository,
    @required IProjectRepository pRepository,
  })  : assert(cRepository != null),
        assert(pRepository != null),
        _cRepository = cRepository,
        _pRepository = pRepository, super(CellFormState.initial());

  @override
  Stream<CellFormState> mapEventToState(
    CellFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield* e.initialCellOption.fold(
          () async* {
            projectId = e.projectId;
            await _setCartesianDimensions();
            yield state.copyWith(
              cell: state.cell.copyWith(
                projectId: e.projectId,
                vertices: List4(
                  KtList.of(
                    Position.empty(),
                    Position.empty(),
                  ),
                ),
              ),
              isInitial: false,
            );
          },
          (initialCell) async* {
            projectId = initialCell.projectId;
            await _setCartesianDimensions();
            yield state.copyWith(
              cell: initialCell,
              isEditing: true,
              isInitial: false,
            );
          },
        );
      },
      nameChanged: (e) async* {
        yield state.copyWith(
          cell: state.cell.copyWith(name: Name(e.nameStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      floorChanged: (e) async* {
        KtMutableList<Position> vertices =
            state.cell.vertices.getOrCrash().toMutableList();

        for (int i = 0; i < vertices.size; i++) {
          vertices[i] =
              vertices[i].copyWith(floor: FloorNumber.fromString(e.floorStr));
        }

        yield state.copyWith(
          cell: state.cell.copyWith(vertices: List4(vertices.toList())),
          saveFailureOrSuccessOption: none(),
        );
      },
      verticesChanged: (e) async* {
        KtMutableList<Position> newVertices = KtMutableList<Position>.empty();
        final floorNumber = state.cell.vertices.getOrCrash()[0].floor;

        newVertices.addAll(e.vertices.map((primitive) => primitive
            .toDomain(_cartesianDimensions)
            .copyWith(floor: floorNumber)));

        yield state.copyWith(
          cell: state.cell.copyWith(vertices: List4(newVertices.toList())),
          saveFailureOrSuccessOption: none(),
        );
      },
      saved: (e) async* {
        Either<CellFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );
        print(state.cell.vertices);
        print(state.cell.failureOption);
        if (state.cell.failureOption.isNone()) {
          failureOrSuccess = state.isEditing
              ? await _cRepository.update(state.cell)
              : await _cRepository.create(state.cell);
        }
        yield state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      deleted: (e) async* {
        Either<CellFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isDeleting: true,
          deleteFailureOrSuccessOption: none(),
        );

        failureOrSuccess = await _cRepository.delete(e.id);

        yield state.copyWith(
          isDeleting: false,
          showErrorMessages: false,
          deleteFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }

  Future _setCartesianDimensions() async {
    final failureOrCoordinateValues =
        await _pRepository.readCartesianDimensionsById(projectId);
    _cartesianDimensions = failureOrCoordinateValues.fold(
        (failure) => null, (cartesianDimensions) => cartesianDimensions);
  }
}
