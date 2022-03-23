import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/painting.dart';
import 'package:injectable/injectable.dart';

import '../../dtos/floormap/floor_map_dto.dart';
import '../i_image_data_source.dart';

@LazySingleton(as: IImageDataSource, env: [Environment.prod, Environment.dev])
class CloudStorageDataSource implements IImageDataSource {
  @override
  Future<String> saveFloorImage(String projectId, FloorMapDto floor) async {
    try {
      final imageDirectory = 'projects/$projectId/${floor.id}';
      final imageFile = File(floor.imagePath);
      final decodedImage =
          await decodeImageFromList(imageFile.readAsBytesSync());

      final storageRef = FirebaseStorage.instance.ref().child(imageDirectory);

      final uploadTask = storageRef.putFile(
          imageFile,
          StorageMetadata(
            customMetadata: {
              'height': decodedImage.height.toString(),
              'width': decodedImage.width.toString(),
            },
          ));
      final snapshot = await uploadTask.onComplete;
      final url = (await snapshot.ref.getDownloadURL()).toString();

      return url;
    } catch (e) {
      throw Exception();
    }
  }

  @override
  Future<List<String>> saveFloorImages(
      String projectId, List<FloorMapDto> floors) async {
    try {
      List<String> imagePaths = List<String>();
      if (floors.length != 0) {
        await Future.forEach(floors, (FloorMapDto floor) async {
          final imagePath = await saveFloorImage(projectId, floor);
          imagePaths.add(imagePath);
        });
      }
      return imagePaths;
    } catch (e) {
      throw Exception();
    }
  }
}
