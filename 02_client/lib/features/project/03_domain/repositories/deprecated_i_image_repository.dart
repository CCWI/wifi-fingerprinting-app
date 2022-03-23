// import 'dart:io';

// import 'package:dartz/dartz.dart';
// import 'package:meta/meta.dart';

// import '../../../../common/03_domain/entities/floormap/floor_map.dart';
// import '../../../../common/03_domain/value_objects/floor_map_value_objects.dart';
// import '../../../../common/03_domain/value_objects/value_objects.dart';
// import '../failures/project_failure.dart';

// abstract class IImageRepository {
//   Future<Either<ProjectFailure, CloudImagePath>> uploadImageToCloud({
//     @required File image,
//     @required UniqueId projectId,
//     @required UniqueId imageId,
//   });

//   Future<Either<ProjectFailure, List25<CloudImagePath>>> uploadImagesToCloud({
//     @required UniqueId projectId,
//     @required List25<FloorMap> floorMaps,
//   });

//   Future<Either<ProjectFailure, List25<Path>>> copyLocalImagesToAppFolder({
//     @required UniqueId projectId,
//     @required List25<FloorMap> floorMaps,
//   });

//   Future<Either<ProjectFailure, Path>> copyLocalImageToAppFolder({
//     @required File image,
//     @required UniqueId projectId,
//     @required UniqueId imageId,
//   });

//   Future<Either<ProjectFailure, File>> fetchImageLocallyByIds({
//     @required UniqueId projectId,
//     @required UniqueId imageId,
//   });

//   Future<Either<ProjectFailure, File>> fetchImageByLocalPath({
//     @required Path path,
//   });
// }
