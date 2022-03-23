import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';
import 'package:path_provider/path_provider.dart';

import '../../03_domain/entities/floormap/floor_map.dart';
import '../../03_domain/failures/image_failure.dart';
import '../../03_domain/repositories/i_image_repository.dart';
import '../../03_domain/value_objects/floor_map_value_objects.dart';
import '../../03_domain/value_objects/value_objects.dart';
import '../data_scource/i_image_data_source.dart';
import '../dtos/floormap/floor_map_dto.dart';

@LazySingleton(as: IImageRepository)
class ImageRepository implements IImageRepository {
  final IImageDataSource _dataSource;

  ImageRepository(IImageDataSource dataSource)
      : assert(dataSource != null),
        _dataSource = dataSource;

  static Future<Either<ImageFailure, File>> getLocalImageById({
    @required UniqueId projectId,
    @required UniqueId imageId,
  }) async {
    try {
      File fileToReturn;
      final appDirectory = (await getExternalStorageDirectory()).path;
      final localDir =
          Directory('$appDirectory/projects/${projectId.getOrCrash()}');
      final filesInDir = await _getFilesInDirectory(localDir);

      for (FileSystemEntity file in filesInDir) {
        final fileWithExtension = file.path.split('/').last;
        final fileWithoutExtension = fileWithExtension.split('.').first;

        if (fileWithoutExtension == imageId.getOrCrash()) {
          fileToReturn = File.fromUri(file.uri);
          break;
        }
      }

      return right<ImageFailure, File>(fileToReturn);
    } catch (e) {
      return left(const ImageFailure.unexpected());
    }
  }

  static Future<List<FileSystemEntity>> _getFilesInDirectory(
      Directory directory) async {
    final filesInDir = List<FileSystemEntity>();
    final completer = Completer();
    final lister = directory.list();

    lister.listen(
      (file) => filesInDir.add(file),
      onDone: () => completer.complete(filesInDir),
    );

    return completer.future;
  }

  @override
  Future<Either<ImageFailure, Path>> saveFloorImage({
    UniqueId projectId,
    FloorMap floor,
  }) async {
    return await _dataSource
        .saveFloorImage(projectId.getOrCrash(), FloorMapDto.fromDomain(floor))
        .then((path) => right<ImageFailure, Path>(Path(path)))
        .catchError((e) {
      return left(const ImageFailure.unexpected());
    });
  }

  @override
  Future<Either<ImageFailure, List25<Path>>> saveFloorImages({
    UniqueId projectId,
    List25<FloorMap> floors,
  }) async {
    return await _dataSource
        .saveFloorImages(
            projectId.getOrCrash(),
            floors
                .getOrCrash()
                .map((floor) => FloorMapDto.fromDomain(floor))
                .asList())
        .then((paths) => right<ImageFailure, List25<Path>>(
            List25(paths.kt.map((path) => Path(path)))))
        .catchError((e) {
      return left(const ImageFailure.unexpected());
    });
  }
}
