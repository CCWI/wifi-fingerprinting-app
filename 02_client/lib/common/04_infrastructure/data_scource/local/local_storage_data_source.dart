import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

import '../../../05_utils/constants.dart';
import '../../dtos/floormap/floor_map_dto.dart';
import '../i_image_data_source.dart';

@LazySingleton(as: IImageDataSource, env: [Constants.local_dev])
class LocalStorageDataSource implements IImageDataSource {
  @override
  Future<String> saveFloorImage(String projectId, FloorMapDto floor) async {
    try {
      final imageFile = File(floor.imagePath);

      final fileExtension = imageFile.path.split('.').last;
      final appDirectory = await _getAppFolderDirectory();
      final path = '$appDirectory/$projectId/$imageFile.$fileExtension';

      await File(path).create(recursive: true);
      final copiedFile = await imageFile.copy(path);
      final reducedFilePath = copiedFile.path.split(appDirectory).last;

      return reducedFilePath;
    } catch (e) {
      throw Exception();
    }
  }

  @override
  Future<List<String>> saveFloorImages(
      String projectId, List<FloorMapDto> floors) async {
    try {
      List<String> imagePaths = List<String>();
      await Future.forEach(floors, (FloorMapDto floor) async {
        final imagePath = await saveFloorImage(projectId, floor);
        imagePaths.add(imagePath);
      });

      return imagePaths;
    } catch (e) {
      throw Exception();
    }
  }

  Future<String> _getAppFolderDirectory() async {
    final directory = await getExternalStorageDirectory();
    return directory.path;
  }
}
