import 'package:flutter/material.dart';
import 'package:kt_dart/kt.dart';
import 'package:provider/provider.dart';

import 'floors_presentation_class.dart';

extension FloorsX on BuildContext {
  KtList<FloorMapPrimitive> get floors =>
      Provider.of<Floors>(this, listen: false).value;
  set floors(KtList<FloorMapPrimitive> value) =>
      Provider.of<Floors>(this, listen: false).value = value;
}
