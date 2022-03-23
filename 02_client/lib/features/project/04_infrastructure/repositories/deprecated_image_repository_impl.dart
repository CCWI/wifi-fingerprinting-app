// import 'dart:async';
// import 'dart:io';

// import 'package:dartz/dartz.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:injectable/injectable.dart';
// import 'package:kt_dart/collection.dart';
// import 'package:meta/meta.dart';
// import 'package:path_provider/path_provider.dart';

// import '../../../../common/03_domain/entities/floormap/floor_map.dart';
// import '../../../../common/03_domain/value_objects/floor_map_value_objects.dart';
// import '../../../../common/03_domain/value_objects/value_objects.dart';
// import '../../03_domain/failures/project_failure.dart';
// import '../../03_domain/repositories/i_image_repository.dart';

// @LazySingleton(as: IImageRepository)
// class ImageRepositoryImpl implements IImageRepository {
//   @override
//   Future<Either<ProjectFailure, CloudImagePath>> uploadImageToCloud({
//     @required File image,
//     @required UniqueId projectId,
//     @required UniqueId imageId,
//   }) async {
//     try {
//       final imagePath = await _uploadImageToCloud(image, projectId, imageId);
//       return right<ProjectFailure, CloudImagePath>(imagePath);
//     } catch (e) {
//       return left(const ProjectFailure.unexpected());
//     }
//   }

//   @override
//   Future<Either<ProjectFailure, List25<CloudImagePath>>> uploadImagesToCloud({
//     @required UniqueId projectId,
//     @required List25<FloorMap> floorMaps,
//   }) async {
//     try {
//       final floorMapList = floorMaps.getOrCrash();
//       final KtMutableList<CloudImagePath> pathList =
//           KtMutableList<CloudImagePath>.empty();

//       await Future.forEach(floorMapList.iter, (FloorMap floorMap) async {
//         final fileToCopy = File(floorMap.localPath.getOrCrash());
//         final imagePath =
//             await _uploadImageToCloud(fileToCopy, projectId, floorMap.id);
//         pathList.add(imagePath);
//       });

//       return right<ProjectFailure, List25<CloudImagePath>>(
//           List25(pathList.toList()));
//     } catch (e) {
//       return left(const ProjectFailure.unexpected());
//     }
//   }

//   @override
//   Future<Either<ProjectFailure, List25<Path>>> copyLocalImagesToAppFolder({
//     @required UniqueId projectId,
//     @required List25<FloorMap> floorMaps,
//   }) async {
//     try {
//       final floorMapList = floorMaps.getOrCrash();
//       final KtMutableList<Path> pathList = KtMutableList<Path>.empty();

//       await Future.forEach(floorMapList.iter, (FloorMap floorMap) async {
//         final fileToCopy = File(floorMap.localPath.getOrCrash());
//         final imagePath = await _copyLocalImageToAppFolder(
//             fileToCopy, projectId, floorMap.id);
//         pathList.add(imagePath);
//       });

//       return right<ProjectFailure, List25<Path>>(List25(pathList.toList()));
//     } catch (e) {
//       return left(const ProjectFailure.unexpected());
//     }
//   }

//   @override
//   Future<Either<ProjectFailure, Path>> copyLocalImageToAppFolder({
//     @required File image,
//     @required UniqueId projectId,
//     @required UniqueId imageId,
//   }) async {
//     try {
//       return _copyLocalImageToAppFolder(image, projectId, imageId).then(
//         (imagePath) => right<ProjectFailure, Path>(imagePath),
//       );
//     } catch (e) {
//       return left(const ProjectFailure.unexpected());
//     }
//   }

//   @override
//   Future<Either<ProjectFailure, File>> fetchImageLocallyByIds(
//       {UniqueId projectId, UniqueId imageId}) async {
//     return await _getFileById(projectId, imageId)
//         .then((file) => right<ProjectFailure, File>(file))
//         .catchError((e) {
//       return left(const ProjectFailure.unexpected());
//     });
//   }

//   @override
//   Future<Either<ProjectFailure, File>> fetchImageByLocalPath(
//       {Path path}) async {
//     return _getAppFolderDirectory().then((appDirectory) {
//       return right<ProjectFailure, File>(
//           File(appDirectory + path.getOrCrash()));
//     }).catchError((e) {
//       return left(const ProjectFailure.unexpected());
//     });
//   }

//   Future<String> _getAppFolderDirectory() async {
//     final directory = await getExternalStorageDirectory();
//     return directory.path;
//   }

//   Future<Path> _copyLocalImageToAppFolder(
//     File image,
//     UniqueId projectId,
//     UniqueId imageId,
//   ) async {
//     final fileExtension = image.path.split('.').last;
//     final appDirectory = await _getAppFolderDirectory();
//     final newLocalPath =
//         '$appDirectory/projects/${projectId.getOrCrash()}/${imageId.getOrCrash()}.$fileExtension';

//     await File(newLocalPath).create(recursive: true);
//     final newFile = await image.copy(newLocalPath);

//     final reducedFilePath = newFile.path.split(appDirectory).last;

//     return Path(reducedFilePath);
//   }

//   Future<CloudImagePath> _uploadImageToCloud(
//     File image,
//     UniqueId projectId,
//     UniqueId imageId,
//   ) async {
//     final imageName = '${imageId.getOrCrash()}';
//     final imageDirectory = 'projects/${projectId.getOrCrash()}/$imageName';

//     final storageReference =
//         FirebaseStorage.instance.ref().child(imageDirectory);

//     final uploadTask = storageReference.putFile(image);
//     final storageSnapshot = await uploadTask.onComplete;
//     final downloadUrl = (await storageSnapshot.ref.getDownloadURL()).toString();

//     return CloudImagePath(downloadUrl);
//   }

//   Future<File> _getFileById(UniqueId projectId, UniqueId imageId) async {
//     File fileToReturn;
//     final appDirectory = await _getAppFolderDirectory();
//     final localDir =
//         Directory('$appDirectory/projects/${projectId.getOrCrash()}');
//     final filesInDir = await _getFilesInDirectory(localDir);

//     for (FileSystemEntity file in filesInDir) {
//       final fileWithExtension = file.path.split('/').last;
//       final fileWithoutExtension = fileWithExtension.split('.').first;

//       if (fileWithoutExtension == imageId.getOrCrash()) {
//         fileToReturn = File.fromUri(file.uri);
//         break;
//       }
//     }

//     return fileToReturn;
//   }

//   Future<List<FileSystemEntity>> _getFilesInDirectory(
//       Directory directory) async {
//     final filesInDir = List<FileSystemEntity>();
//     final completer = Completer();
//     final lister = directory.list();

//     lister.listen(
//       (file) => filesInDir.add(file),
//       onDone: () => completer.complete(filesInDir),
//     );

//     return completer.future;
//   }
// }
