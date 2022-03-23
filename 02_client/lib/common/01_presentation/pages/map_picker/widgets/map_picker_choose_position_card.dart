import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'map_picker_view.dart';

class MapPickerChoosePositionCard extends StatefulWidget {
  final CoordinateValueController _controller;
  final Function(Offset) _onSetPosition;
  final Function _onCancel;

  const MapPickerChoosePositionCard({
    Key key,
    @required CoordinateValueController controller,
    @required Function(Offset) onSetPosition,
    @required Function onCancel,
  })  : assert(controller != null),
        assert(onSetPosition != null),
        assert(onCancel != null),
        _onSetPosition = onSetPosition,
        _onCancel = onCancel,
        _controller = controller,
        super(key: key);

  @override
  _MapPickerChoosePositionCardState createState() =>
      _MapPickerChoosePositionCardState();
}

class _MapPickerChoosePositionCardState
    extends State<MapPickerChoosePositionCard> {
  Offset _position;

  @override
  void initState() {
    super.initState();
    _position = Offset.zero;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Card(
        color: Theme.of(context).accentColor,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            _buildPositionTile(context),
            ButtonBar(
              alignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(
                  child: Text(
                    'CANCEL',
                    style: TextStyle(
                      color: Theme.of(context).primaryColorLight,
                    ),
                  ),
                  onPressed: () => widget._onCancel(),
                ),
                FlatButton(
                  child: Text('SET POSITION',
                      style: TextStyle(
                        color: Theme.of(context).primaryColorLight,
                      )),
                  onPressed: () => widget._onSetPosition(_position),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  StreamBuilder<CoordinateControllerValue> _buildPositionTile(
      BuildContext context) {
    return StreamBuilder(
      stream: widget._controller.outputPositionStream,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          _position = snapshot.data.position;
        }
        return ListTile(
          leading: Icon(
            Icons.map,
            color: Colors.white,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                child: Text(
                  'X: ${_position.dx.toStringAsFixed(3)}',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                child: Text('Y: ${_position.dy.toStringAsFixed(3)}',
                    style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        );
      },
    );
  }
}
