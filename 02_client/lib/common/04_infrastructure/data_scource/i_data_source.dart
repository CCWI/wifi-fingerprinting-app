import 'package:kt_dart/collection.dart';

import '../dtos/i_dto.dart';

abstract class IBaseDataSource<Dto extends IDto> {
  Future create(Dto dto);
  Future<Dto> read(String id);
  Future update(Dto dto);
  Future delete(String id);
}

abstract class IDataSource<Dto extends IDto> implements IBaseDataSource<Dto> {
  Stream<KtList<Dto>> watchAllFromProject(String id);
}

mixin ToMap<Dto extends IDto> {
  Map<String, dynamic> dtoToMap(Dto item, [Map<String, dynamic> other]) {
    final Map<String, dynamic> result = {};
    if (other != null) {
      result.addAll(other);
    }
    result.addAll(item.toJson());
    return result;
  }
}
