import 'dart:io';

import 'package:meta/meta.dart';

abstract class IImageDataSource {
  Future saveImage({
    @required File image,
    @required String projectId,
    @required String imageId,
  });

  Future<File> getImage({
    @required String path,
  });
}
