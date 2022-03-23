import '../dtos/floormap/floor_map_dto.dart';

abstract class IImageDataSource {
  Future<String> saveFloorImage(String projectId, FloorMapDto floor);
  Future<List<String>> saveFloorImages(
      String projectId, List<FloorMapDto> floors);
}
