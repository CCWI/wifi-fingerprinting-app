import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import '../entities/floormap/floor_map.dart';
import '../failures/image_failure.dart';
import '../value_objects/floor_map_value_objects.dart';
import '../value_objects/value_objects.dart';

abstract class IImageRepository {
  Future<Either<ImageFailure, Path>> saveFloorImage({
    @required UniqueId projectId,
    @required FloorMap floor,
  });

  Future<Either<ImageFailure, List25<Path>>> saveFloorImages({
    @required UniqueId projectId,
    @required List25<FloorMap> floors,
  });
}
