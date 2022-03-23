import 'dart:async';

import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:positioned_tap_detector/positioned_tap_detector.dart';

import '../../../../05_utils/ignorable_change_notifier.dart';
import '../../../../05_utils/measure_size.dart';
import 'map_picker_controller.dart';

class MapPickerView extends StatefulWidget {
  final bool _displayOnly;
  final ImageProvider<dynamic> _image;
  final CoordinateValueController _controller;
  final Offset _cartesianDimensions;
  final Offset _fixedPosition;

  const MapPickerView({
    Key key,
    @required ImageProvider<dynamic> image,
    @required CoordinateValueController controller,
    @required Offset cartesianDimensions,
    Offset fixedPosition,
    bool displayOnly = false,
  })  : assert(image != null),
        assert(controller != null),
        assert(cartesianDimensions != null),
        _image = image,
        _controller = controller,
        _cartesianDimensions = cartesianDimensions,
        _fixedPosition = fixedPosition,
        _displayOnly = displayOnly,
        super(key: key);

  @override
  _MapPickerViewState createState() => _MapPickerViewState();
}

class _MapPickerViewState extends State<MapPickerView> {
  //photo view related
  MapPickerController _mapPickerCtrl;
  ImageProvider<dynamic> _image;
  bool _showMarker;
  //functional related
  Offset _fixedPosition;
  Offset _markerScreenPosition;
  bool _displayOnly;
  Size _imageDimensions;
  Size _widgetDimensions;
  Offset _cartesianDimensions;
  //coordinate controller related
  CoordinateValueController _coordinateCtrl;
  StreamSubscription<MapPickerControllerValue> _subscription;

  @override
  void initState() {
    _initializeData(widget._image);
    _showMarker = _widgetDimensions != null;
    super.initState();
  }

  @override
  void dispose() {
    _coordinateCtrl.dispose();
    _mapPickerCtrl.dispose();
    _subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_image == null) {
      return Container();
    } else {
      return Stack(
        children: <Widget>[
          _buildPhotoView(context),
          Builder(builder: (context) {
            if (_showMarker && _markerScreenPosition.dx != -1.0) {
              return Positioned(
                left: _markerScreenPosition.dx,
                top: _markerScreenPosition.dy,
                width: 10.0,
                height: 10.0,
                child: Icon(
                  Icons.gps_fixed,
                  color: Colors.red,
                ),
              );
            } else {
              return Container();
            }
          }),
        ],
      );
    }
  }

  Widget _buildPhotoView(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 20,
      child: ClipRect(
        child: PositionedTapDetector(
          onTap: _getToTappedPosition,
          child: MeasureSize(
            onChange: (size) {
              setState(() {
                print(size);
                _widgetDimensions = size;
                _markerScreenPosition =
                    Offset((size.width - 10) / 2, (size.height - 10) / 2);
                _showMarker = true;
              });
            },
            child: PhotoView(
              controller: _mapPickerCtrl,
              imageProvider: _image,
              enableRotation: false,
              minScale: PhotoViewComputedScale.contained * 0.2,
              maxScale: PhotoViewComputedScale.contained * 100.0,
              backgroundDecoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onData(MapPickerControllerValue data) {
    _coordinateCtrl.position = data.coordinatePosition;
  }

  void _onDataWithFixedPosition(MapPickerControllerValue data) {
    _coordinateCtrl.position = data.coordinatePosition;
    setState(() {
      _markerScreenPosition = _calculateFixedMarkerPosition(_fixedPosition);
    });
  }

  void _initializeData(ImageProvider<dynamic> imageProvider) {
    Completer<Size> completer = Completer();

    imageProvider.resolve(ImageConfiguration()).addListener(
      ImageStreamListener((ImageInfo image, bool _) {
        var currentImage = image.image;
        Size size = Size(
          currentImage.width.toDouble(),
          currentImage.height.toDouble(),
        );
        completer.complete(size);
      }),
    );
    completer.future.then(
      (dimensions) {
        setState(
          () {
            _image = widget._image;
            _imageDimensions = dimensions;
            _displayOnly = widget._displayOnly;
            _coordinateCtrl = widget._controller;
            _cartesianDimensions = widget._cartesianDimensions;
            _fixedPosition = widget._fixedPosition;

            _mapPickerCtrl = MapPickerController(
              imageDimensions: _imageDimensions,
              cartesianDimensions: widget._cartesianDimensions,
            );

            if (_displayOnly && widget._fixedPosition != null) {
              _subscription = _mapPickerCtrl.outputStateStream
                  .listen(_onDataWithFixedPosition);
            } else {
              _subscription = _mapPickerCtrl.outputStateStream.listen(_onData);
            }
          },
        );
      },
    );
  }

  void _getToTappedPosition(TapPosition position) {
    if (!_displayOnly && _fixedPosition == null) {
      final currentCoordinatePosition = _mapPickerCtrl.coordinatePosition;
      final clickedCoordinatePosition = _calculateClickedPosition(
        currentCoordinatePosition,
        position.relative,
      );

      _mapPickerCtrl.scale =
          _calculateSmallestReachableScale(clickedCoordinatePosition);
      _mapPickerCtrl.coordinatePosition = clickedCoordinatePosition;
    }
  }

  double _calculateSmallestReachableScale(Offset coordinatePosition) {
    double scale = _mapPickerCtrl.scale;
    Offset cartesianDimensions = _mapPickerCtrl.cartesianDimensions;

    //get relevant coordinate distance
    final coordinateDistanceX = coordinatePosition.dx <=
            (cartesianDimensions.dx - coordinatePosition.dx)
        ? coordinatePosition.dx
        : (cartesianDimensions.dx - coordinatePosition.dx);
    final coordinateDistanceY = coordinatePosition.dy <=
            (cartesianDimensions.dy - coordinatePosition.dy)
        ? coordinatePosition.dy
        : (cartesianDimensions.dy - coordinatePosition.dy);

    //widget size
    final halfScreenSizeX = _widgetDimensions.width / 2;
    final halfScreenSizeY = _widgetDimensions.height / 2;

    final neededPixelsPerCoordinateUnitX =
        halfScreenSizeX / coordinateDistanceX;
    final neededPixelsPerCoordinateUnitY =
        halfScreenSizeY / coordinateDistanceY;

    final xScale = neededPixelsPerCoordinateUnitX /
        _mapPickerCtrl.pixelsPerCoordinateUnitX;
    final yScale = neededPixelsPerCoordinateUnitY /
        _mapPickerCtrl.pixelsPerCoordinateUnitY;

    scale = xScale >= yScale ? xScale : yScale;

    return scale;
  }

  Offset _calculateFixedMarkerPosition(Offset coordinateMarkerPosition,
      [double markerSize = 10.0]) {
    final centerScreen =
        Offset(_widgetDimensions.width / 2, _widgetDimensions.height / 2);
    final scale = _mapPickerCtrl.scale;
    final currentCoordinatePosition = _mapPickerCtrl.coordinatePosition;

    final currentPixelsPerCoordinateUnitX =
        _mapPickerCtrl.pixelsPerCoordinateUnitX * scale;
    final currentPixelsPerCoordinateUnitY =
        _mapPickerCtrl.pixelsPerCoordinateUnitY * scale;

    final distanceX =
        currentCoordinatePosition.dx - coordinateMarkerPosition.dx;
    final distanceY =
        currentCoordinatePosition.dy - coordinateMarkerPosition.dy;

    final distanceInPixelsX = distanceX * currentPixelsPerCoordinateUnitX;
    final distanceInPixelsY = distanceY * currentPixelsPerCoordinateUnitY;

    final relativeScreenValueX = centerScreen.dx - distanceInPixelsX;
    final relativeScreenValueY = centerScreen.dy + distanceInPixelsY;

    return Offset(relativeScreenValueX, relativeScreenValueY);
  }

  Offset _calculateClickedPosition(
      Offset coordinatePosition, Offset clickedAbsolutePosition) {
    //get absolute pixel positions
    final absolutePixelPositionX = coordinatePosition.dx *
        (_imageDimensions.width / _cartesianDimensions.dx);
    final absolutePixelPositionY = coordinatePosition.dy *
        (_imageDimensions.height / _cartesianDimensions.dy);

    //half of visible screen
    final halfScreenX = _widgetDimensions.width / 2;
    final halfScreenY = _widgetDimensions.height / 2;

    //distances from pixel position to clicked position
    final clickedPositionDistanceX = (clickedAbsolutePosition.dx - halfScreenX);
    final clickedPositionDistanceY = (clickedAbsolutePosition.dy - halfScreenY);

    //updated absolute pixel positions
    final absoluteClickedPositionX = absolutePixelPositionX +
        clickedPositionDistanceX / _mapPickerCtrl.scale;
    final absoluteClickedPositionY = absolutePixelPositionY -
        clickedPositionDistanceY / _mapPickerCtrl.scale;

    //coordinate unit per pixel
    final pixelsPerUnitX = _imageDimensions.width / _cartesianDimensions.dx;
    final pixelsPerUnitY = _imageDimensions.height / _cartesianDimensions.dy;

    //calculated final position
    final relativePositionX = absoluteClickedPositionX / pixelsPerUnitX;
    final relativePositionY = absoluteClickedPositionY / pixelsPerUnitY;

    return Offset(relativePositionX, relativePositionY);
  }
}

class CoordinateValueController {
  final IgnorableValueNotifier<CoordinateControllerValue> _valueNotifier;
  CoordinateControllerValue prevValue;
  CoordinateControllerValue initial;

  StreamController<CoordinateControllerValue> _outputCtrl;

  CoordinateValueController()
      : _valueNotifier = IgnorableValueNotifier(
          CoordinateControllerValue(
            position: Offset.zero,
          ),
        ) {
    initial = value;
    prevValue = initial;

    _valueNotifier.addListener(_changeListener);
    _outputCtrl = StreamController<CoordinateControllerValue>.broadcast();
    _outputCtrl.sink.add(initial);
  }

  Stream<CoordinateControllerValue> get outputPositionStream =>
      _outputCtrl.stream;

  void _changeListener() {
    _outputCtrl.sink.add(value);
  }

  void dispose() {
    _outputCtrl.close();
    _valueNotifier.dispose();
  }

  set position(Offset position) {
    if (value.position == position) {
      return;
    }
    prevValue = value;
    value = CoordinateControllerValue(
      position: position,
    );
  }

  CoordinateControllerValue get value => _valueNotifier.value;

  set value(CoordinateControllerValue newValue) {
    if (_valueNotifier.value == newValue) {
      return;
    }
    _valueNotifier.value = newValue;
  }
}

class CoordinateControllerValue {
  final Offset position;

  CoordinateControllerValue({
    @required this.position,
  });
}
