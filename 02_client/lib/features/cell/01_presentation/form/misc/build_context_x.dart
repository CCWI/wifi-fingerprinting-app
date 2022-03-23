import 'package:flutter/material.dart';
import 'package:kt_dart/kt.dart';
import 'package:provider/provider.dart';

import 'vertices_presentation_class.dart';

extension VerticesX on BuildContext {
  KtList<VertexPrimitive> get vertices =>
      Provider.of<Vertices>(this, listen: false).value;
  set vertices(KtList<VertexPrimitive> value) =>
      Provider.of<Vertices>(this, listen: false).value = value;
}