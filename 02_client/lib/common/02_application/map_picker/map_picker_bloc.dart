import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

import '../../../features/project/03_domain/failures/project_failure.dart';
import '../../../features/project/03_domain/repositories/i_project_repository.dart';
import '../../03_domain/entities/floormap/floor_map.dart';
import '../../03_domain/entities/position/position.dart';
import '../../03_domain/repositories/i_image_repository.dart';
import '../../03_domain/value_objects/floor_map_value_objects.dart';
import '../../03_domain/value_objects/value_objects.dart';
import '../../04_infrastructure/repositories/image_repository.dart';

part 'map_picker_bloc.freezed.dart';
part 'map_picker_event.dart';
part 'map_picker_state.dart';

@injectable
class MapPickerBloc extends Bloc<MapPickerEvent, MapPickerState> {
  final IProjectRepository _pRepository;
  Offset _cartesianDimensions;
  UniqueId _projectId;

  MapPickerBloc({
    IProjectRepository pRepository,
    IImageRepository iRepository,
  })  : assert(pRepository != null),
        _pRepository = pRepository,
        super(MapPickerState.initial());

  @override
  Stream<MapPickerState> mapEventToState(
    MapPickerEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield MapPickerState.loadInProgress();

        final failureOrProjectDetails =
            await _pRepository.readProjectDetails(e.projectId);

        yield* failureOrProjectDetails.fold(
          (failure) async* {
            yield MapPickerState.loadFailure(failure);
          },
          (projectDetails) async* {
            _projectId = projectDetails.projectId;
            _cartesianDimensions = Offset(projectDetails.xMaxValue.getOrCrash(),
                projectDetails.yMaxValue.getOrCrash());

            if (projectDetails.floors.getOrCrash().size == 1) {
              final failureOrImage = await _getImageByFloor(
                  e.projectId, projectDetails.floors.getOrCrash().get(0));

              yield failureOrImage.fold(
                (failure) => MapPickerState.loadFailure(failure),
                (image) => MapPickerState.imageLoadSuccess(
                    image, _cartesianDimensions),
              );
            } else if (e.resultPosition == null &&
                projectDetails.floors.getOrCrash().size > 1) {
              yield MapPickerState.floorsLoadSuccess(projectDetails.floors);
            } else {
              final floorNumber = e.resultPosition.floor;
              final floorWithSameNumber = projectDetails.floors
                  .getOrCrash()
                  .filter((floor) => floor.floor == floorNumber)
                  ?.first();

              final failureOrImage =
                  await _getImageByFloor(e.projectId, floorWithSameNumber);

              yield failureOrImage.fold(
                (failure) => MapPickerState.loadFailure(failure),
                (image) => MapPickerState.imageLoadSuccess(
                    image, _cartesianDimensions),
              );
            }
          },
        );
      },
      floorPicked: (e) async* {
        final failureOrImage = await _getImageByFloor(_projectId, e.floor);

        yield failureOrImage.fold(
          (failure) => MapPickerState.loadFailure(failure),
          (image) =>
              MapPickerState.imageLoadSuccess(image, _cartesianDimensions),
        );
      },
    );
  }

  Future<Either<ProjectFailure, ImageProvider<dynamic>>> _getImageByFloor(
      UniqueId projectId, FloorMap floor) async {
    try {
      final isInCloud = floor.imagePath.getOrCrash().startsWith('https://');

      if (isInCloud) {
        return right<ProjectFailure, ImageProvider<dynamic>>(
            NetworkImage(floor.imagePath.getOrCrash()));
      } else {
        final failureOrFile = await ImageRepository.getLocalImageById(
            projectId: projectId, imageId: floor.id);

        return failureOrFile.fold(
            (_) => left<ProjectFailure, ImageProvider<dynamic>>(
                ProjectFailure.unexpected()),
            (file) =>
                right<ProjectFailure, ImageProvider<dynamic>>(FileImage(file)));
      }
    } catch (e) {
      return left<ProjectFailure, ImageProvider<dynamic>>(
          ProjectFailure.unexpected());
    }
  }
}
