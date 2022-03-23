import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

import '../../../../05_utils/ignorable_change_notifier.dart';

class MapPickerController
    implements PhotoViewControllerBase<MapPickerControllerValue> {
  final Size _imageDimensions;
  final Offset _cartesianDimensions;
  final double _pixelsPerCoordinateUnitX;
  final double _pixelsPerCoordinateUnitY;

  MapPickerController({
    @required Size imageDimensions,
    @required Offset cartesianDimensions,
    Offset initialPosition = Offset.zero,
  })  : assert(imageDimensions != null),
        assert(cartesianDimensions != null),
        _imageDimensions = imageDimensions,
        _cartesianDimensions = cartesianDimensions,
        _pixelsPerCoordinateUnitX =
            imageDimensions.width / cartesianDimensions.dx,
        _pixelsPerCoordinateUnitY =
            imageDimensions.height / cartesianDimensions.dy,
        _valueNotifier = IgnorableValueNotifier(
          MapPickerControllerValue(
            pixelPosition: Offset.zero,
            coordinatePosition: Offset.zero,
            position: initialPosition,
            scale: 0.0,
            rotation: 0.0,
            rotationFocusPoint: null,
          ),
        ),
        super() {
    final initialPixelPosition = Offset(
      imageDimensions.width / 2,
      imageDimensions.height / 2,
    );
    value = MapPickerControllerValue(
      pixelPosition: initialPixelPosition,
      coordinatePosition: pixelToCoordinatePosition(initialPixelPosition),
      position: position,
      scale: scale,
      rotation: 0.0,
      rotationFocusPoint: value.rotationFocusPoint,
    );
    initial = value;
    prevValue = initial;

    _valueNotifier.addListener(_changeListener);
    _outputCtrl = StreamController<MapPickerControllerValue>.broadcast();
    _outputCtrl.sink.add(initial);
  }

  final IgnorableValueNotifier<MapPickerControllerValue> _valueNotifier;

  @override
  MapPickerControllerValue prevValue;

  MapPickerControllerValue initial;

  StreamController<MapPickerControllerValue> _outputCtrl;

  @override
  Stream<MapPickerControllerValue> get outputStateStream => _outputCtrl.stream;

  @override
  void reset() {
    value = initial;
  }

  void _changeListener() {
    _outputCtrl.sink.add(value);
  }

  @override
  void addIgnorableListener(VoidCallback callback) {
    _valueNotifier.addIgnorableListener(callback);
  }

  @override
  void removeIgnorableListener(VoidCallback callback) {
    _valueNotifier.removeIgnorableListener(callback);
  }

  @override
  void dispose() {
    _outputCtrl.close();
    _valueNotifier.dispose();
  }

  Offset get pixelPosition => value.pixelPosition;

  set pixelPosition(Offset pixelPosition) {
    if (value.position == pixelPosition) {
      return;
    }
    prevValue = value;
    value = MapPickerControllerValue(
      coordinatePosition: pixelToCoordinatePosition(pixelPosition),
      pixelPosition: pixelPosition,
      position: pixelToPhotoViewPosition(pixelPosition),
      scale: scale,
      rotation: rotation,
      rotationFocusPoint: rotationFocusPoint,
    );
  }

  Offset get coordinatePosition => value.coordinatePosition;

  set coordinatePosition(Offset coordinatePosition) {
    if (value.position == coordinatePosition) {
      return;
    }
    prevValue = value;
    value = MapPickerControllerValue(
      coordinatePosition: coordinatePosition,
      pixelPosition: coordinateToPixelPosition(coordinatePosition),
      position: coordinateToPhotoViewPosition(coordinatePosition),
      scale: scale,
      rotation: rotation,
      rotationFocusPoint: rotationFocusPoint,
    );
  }

  @override
  Offset get position => value.position;

  @override
  set position(Offset position) {
    if (value.position == position) {
      return;
    }
    prevValue = value;
    value = MapPickerControllerValue(
      coordinatePosition: photoViewToCoordinatePosition(position),
      pixelPosition: photoViewToPixelPosition(position),
      position: position,
      scale: scale,
      rotation: rotation,
      rotationFocusPoint: rotationFocusPoint,
    );
  }

  @override
  double get rotation => value.rotation;

  @override
  set rotation(double _) {
    return;
  }

  @override
  Offset rotationFocusPoint;

  @override
  double get scale => value.scale;

  @override
  set scale(double scale) {
    if (value.scale == scale) {
      return;
    }
    prevValue = value;
    value = MapPickerControllerValue(
      coordinatePosition: coordinatePosition,
      pixelPosition: pixelPosition,
      position: position,
      scale: scale,
      rotation: rotation,
      rotationFocusPoint: rotationFocusPoint,
    );
  }

  @override
  void setScaleInvisibly(double scale) {
    if (value.scale == scale) {
      return;
    }
    prevValue = value;
    _valueNotifier.updateIgnoring(
      MapPickerControllerValue(
        pixelPosition: pixelPosition,
        coordinatePosition: coordinatePosition,
        position: position,
        scale: scale,
        rotation: rotation,
        rotationFocusPoint: rotationFocusPoint,
      ),
    );
  }

  @override
  MapPickerControllerValue get value => _valueNotifier.value;

  @override
  set value(MapPickerControllerValue newValue) {
    if (_valueNotifier.value == newValue) {
      return;
    }
    _valueNotifier.value = newValue;
  }

  @override
  void updateMultiple({
    Offset pixelPosition,
    Offset coordinatePosition,
    Offset position,
    double scale,
    double rotation,
    Offset rotationFocusPoint,
  }) {
    prevValue = value;
    value = MapPickerControllerValue(
      pixelPosition: pixelPosition ??
          photoViewToPixelPosition(position ?? value.position),
      coordinatePosition: coordinatePosition ??
          photoViewToCoordinatePosition(position ?? value.position),
      position: position == null
          ? coordinatePosition != null
              ? coordinateToPhotoViewPosition(coordinatePosition)
              : pixelPosition != null
                  ? pixelToPhotoViewPosition(pixelPosition)
                  : value.position
          : position,
      scale: scale ?? value.scale,
      rotation: rotation ?? value.rotation,
      rotationFocusPoint: rotationFocusPoint ?? value.rotationFocusPoint,
    );
  }

  Offset photoViewToPixelPosition(Offset photoViewPosition) {
    final pixelValueX =
        _imageDimensions.width / 2 - photoViewPosition.dx / scale;
    final pixelValueY =
        _imageDimensions.height / 2 + photoViewPosition.dy / scale;

    return Offset(pixelValueX, pixelValueY);
  }

  Offset photoViewToCoordinatePosition(Offset photoViewPosition) {
    final pixelPosition = photoViewToPixelPosition(photoViewPosition);

    return pixelToCoordinatePosition(pixelPosition);
  }

  Offset coordinateToPixelPosition(Offset coordinatePosition) {
    final pixelValueX = coordinatePosition.dx * pixelsPerCoordinateUnitX;
    final pixelValueY = coordinatePosition.dy * pixelsPerCoordinateUnitY;

    return Offset(pixelValueX, pixelValueY);
  }

  Offset coordinateToPhotoViewPosition(Offset coordinatePosition) {
    final pixelPosition = coordinateToPixelPosition(coordinatePosition);

    return pixelToPhotoViewPosition(pixelPosition);
  }

  Offset pixelToCoordinatePosition(Offset pixelPosition) {
    final coordinateValueX = pixelPosition.dx / pixelsPerCoordinateUnitX;
    final coordinateValueY = pixelPosition.dy / pixelsPerCoordinateUnitY;

    return Offset(coordinateValueX, coordinateValueY);
  }

  Offset pixelToPhotoViewPosition(Offset pixelPosition) {
    final photoViewValueX =
        (_imageDimensions.width / 2 - pixelPosition.dx) * scale;
    final photoViewValueY =
        (pixelPosition.dy - _imageDimensions.height / 2) * scale;

    return Offset(photoViewValueX, photoViewValueY);
  }

  double get pixelsPerCoordinateUnitX => _pixelsPerCoordinateUnitX;

  double get pixelsPerCoordinateUnitY => _pixelsPerCoordinateUnitY;

  Size get imageDimensions => _imageDimensions;

  Offset get cartesianDimensions => _cartesianDimensions;
}

class MapPickerControllerValue extends PhotoViewControllerValue {
  MapPickerControllerValue({
    @required this.pixelPosition,
    @required this.coordinatePosition,
    @required this.position,
    @required this.scale,
    @required this.rotation,
    @required this.rotationFocusPoint,
  });

  //new values
  final Offset pixelPosition;
  final Offset coordinatePosition;

  //old values
  final Offset position;
  final double scale;
  final double rotation;
  final Offset rotationFocusPoint;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MapPickerControllerValue &&
          runtimeType == other.runtimeType &&
          pixelPosition == other.pixelPosition &&
          coordinatePosition == other.coordinatePosition &&
          position == other.position &&
          scale == other.scale &&
          rotation == other.rotation &&
          rotationFocusPoint == other.rotationFocusPoint;

  @override
  int get hashCode =>
      pixelPosition.hashCode ^
      coordinatePosition.hashCode ^
      position.hashCode ^
      scale.hashCode ^
      rotation.hashCode ^
      rotationFocusPoint.hashCode;

  @override
  String toString() {
    return 'MapPickerControllerValue{coordinatePosition: $coordinatePosition, pixelPosition: $pixelPosition, position: $position, scale: $scale, rotation: $rotation, rotationFocusPoint: $rotationFocusPoint}';
  }
}
