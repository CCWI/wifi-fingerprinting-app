import 'dart:async';
import 'dart:collection';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:wifi_fingerprinting/common/03_domain/failures/image_failure.dart';

import '../../../../common/03_domain/entities/floormap/floor_map.dart';
import '../../../../common/03_domain/repositories/i_image_repository.dart';
import '../../../../common/03_domain/value_objects/floor_map_value_objects.dart';
import '../../../../common/03_domain/value_objects/value_objects.dart';
import '../../01_presentation/form/misc/floors_presentation_class.dart';
import '../../03_domain/entities/project.dart';
import '../../03_domain/failures/project_failure.dart';
import '../../03_domain/repositories/i_project_repository.dart';

part 'project_form_bloc.freezed.dart';
part 'project_form_event.dart';
part 'project_form_state.dart';

@injectable
class ProjectFormBloc extends Bloc<ProjectFormEvent, ProjectFormState> {
  final IProjectRepository _pRepository;
  final IImageRepository _iRepository;
  List25<FloorMap> _initialFloors;

  ProjectFormBloc({
    IProjectRepository pRepository,
    IImageRepository iRepository,
  })  : assert(pRepository != null),
        assert(iRepository != null),
        _pRepository = pRepository,
        _iRepository = iRepository,
        super(ProjectFormState.initial());

  @override
  Stream<ProjectFormState> mapEventToState(
    ProjectFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialProjectOption.fold(
          () {
            return state.copyWith(
              project: state.project.copyWith(
                floors: List25(KtList.of(FloorMap.empty())),
              ),
              isInitial: false,
            );
          },
          (initialProject) {
            _initialFloors = initialProject.floors;
            return state.copyWith(
              project: initialProject,
              isEditing: true,
              isInitial: false,
            );
          },
        );
      },
      nameChanged: (e) async* {
        yield state.copyWith(
          project: state.project.copyWith(name: Name(e.nameStr, true)),
          saveFailureOrSuccessOption: none(),
        );
      },
      floorsChanged: (e) async* {
        yield state.copyWith(
          project: state.project.copyWith(floors: _validateFloorMaps(e.floors)),
          saveFailureOrSuccessOption: none(),
        );
      },
      xLengthChanged: (e) async* {
        yield state.copyWith(
          project: state.project
              .copyWith(xLength: CoordinateValue.fromString(e.xLengthStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      yLengthChanged: (e) async* {
        yield state.copyWith(
          project: state.project
              .copyWith(yLength: CoordinateValue.fromString(e.yLengthStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      saved: (e) async* {
        Either<ProjectFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );

        if (state.project.failureOption.isNone()) {
          //creater shorter names
          final projectId = state.project.id;
          final floors = state.project.floors;

          final updatedFloorsOrFailure = state.isEditing
              ? await _updateImagesInEditedProject(floors, projectId)
              : await _uploadImages(floors, projectId);

          failureOrSuccess = await updatedFloorsOrFailure.fold(
              (_) =>
                  left<ProjectFailure, Unit>(const ProjectFailure.unexpected()),
              (updatedFloors) async {
            final updatedProject =
                state.project.copyWith(floors: updatedFloors);

            return state.isEditing
                ? await _pRepository.update(updatedProject)
                : await _pRepository.create(updatedProject);
          });

          // final failureOrImagePaths = await _iRepository.saveFloorImages(
          //     projectId: projectId, floors: floors);

          // await failureOrImagePaths.fold((failure) async {
          //   return left<ProjectFailure, Unit>(
          //       const ProjectFailure.unexpected());
          // }, (imagePaths) async {
          //   final oldProject = state.project;
          //   final updatedFloors = oldProject.floors.getOrCrash().mapIndexed(
          //       (i, floor) =>
          //           floor.copyWith(imagePath: imagePaths.getOrCrash().get(i)));
          //   final updatedProject =
          //       oldProject.copyWith(floors: List25(updatedFloors));

          //   failureOrSuccess = state.isEditing
          //       ? await _pRepository.update(updatedProject)
          //       : await _pRepository.create(updatedProject);
          // });
        }

        yield state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      deleted: (e) async* {
        Either<ProjectFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isDeleting: true,
          deleteFailureOrSuccessOption: none(),
        );

        failureOrSuccess = await _pRepository.delete(e.id);

        yield state.copyWith(
          isDeleting: false,
          showErrorMessages: false,
          deleteFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }

  List25<FloorMap> _validateFloorMaps(KtList<FloorMapPrimitive> primitives) {
    final KtMutableList<FloorMap> floorMaps =
        primitives.map((p) => p.toDomain()).toMutableList();

    if (floorMaps.size > 1) {
      KtList<int> floorNumbers = floorMaps
          .filter((fm) => fm.floor.isValid())
          .map((fm) => fm.floor.getOrCrash());

      if (floorNumbers.size > 1) {
        final numbersMoreThanOnce =
            _numbersOccuredMoreThanOnce(floorNumbers, floorNumbers.size);

        if (numbersMoreThanOnce.length > 0) {
          for (int i = 0; i < floorMaps.size; i++) {
            if (floorMaps[i].floor.isValid() &&
                numbersMoreThanOnce.contains(floorMaps[i].floor.getOrCrash())) {
              final oldValue = floorMaps[i].floor.getOrCrash();
              floorMaps[i] =
                  floorMaps[i].copyWith(floor: FloorNumber(oldValue, true));
            }
          }
        }
      }
    }

    return List25(floorMaps.toList());
  }

  List<int> _numbersOccuredMoreThanOnce(KtList<int> numbers, int n) {
    List<int> numbersMoreThanOnce = List<int>();
    Set<int> hashSet = HashSet<int>();

    numbers.forEach((n) {
      if (hashSet.add(n) == false) {
        numbersMoreThanOnce.add(n);
      }
    });

    return numbersMoreThanOnce;
  }

  Future<Either<ImageFailure, List25<FloorMap>>> _updateImagesInEditedProject(
      List25<FloorMap> floors, UniqueId projectId) async {
    KtMutableList<int> updatePositions = KtMutableList.empty();
    KtMutableList<FloorMap> toBeUploaded = KtMutableList.empty();

    for (int i = 0; i < floors.getOrCrash().size; i++) {
      if (!floors
          .getOrCrash()
          .get(i)
          .imagePath
          .getOrCrash()
          .startsWith('https://')) {
        toBeUploaded.add(floors.getOrCrash().get(i));
        updatePositions.add(i);
      }
    }

    final floorsToBeUploaded = List25<FloorMap>(toBeUploaded.toList());
    final floorsToBeUploadedPositions = updatePositions.toList();

    if (floorsToBeUploadedPositions.size == 0) {
      return right<ImageFailure, List25<FloorMap>>(floors);
    }

    final failureOrImagePaths = await _iRepository.saveFloorImages(
        projectId: projectId, floors: floorsToBeUploaded);

    final floorsToReturn = floors.getOrCrash().toMutableList();

    return failureOrImagePaths
        .fold((failure) => left<ImageFailure, List25<FloorMap>>(failure),
            (imagePaths) {
      final ktImagePaths = imagePaths.getOrCrash();

      for (int i = 0; i < ktImagePaths.size; i++) {
        final imagePath = ktImagePaths.get(i);
        final indexInFloors = floorsToBeUploadedPositions.get(i);
        floorsToReturn.set(indexInFloors,
            floorsToReturn.get(indexInFloors).copyWith(imagePath: imagePath));
      }

      return right<ImageFailure, List25<FloorMap>>(
          List25<FloorMap>(floorsToReturn.toList()));
    });
  }

  Future<Either<ImageFailure, List25<FloorMap>>> _uploadImages(
      List25<FloorMap> floors, UniqueId projectId) async {
    final failureOrImagePaths = await _iRepository.saveFloorImages(
        projectId: projectId, floors: floors);

    return failureOrImagePaths
        .fold((failure) => left<ImageFailure, List25<FloorMap>>(failure),
            (imagePaths) async {
      final updatedFloors = floors.getOrCrash().mapIndexed((i, floor) =>
          floor.copyWith(imagePath: imagePaths.getOrCrash().get(i)));
      return right<ImageFailure, List25<FloorMap>>(List25(updatedFloors));
    });
  }
}
