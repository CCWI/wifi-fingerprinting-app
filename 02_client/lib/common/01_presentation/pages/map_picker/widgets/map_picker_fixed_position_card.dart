import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:kt_dart/collection.dart';

import '../../../../../features/cell/03_domain/entities/cell.dart';
import '../../../widgets/empty.dart';

class MapPickerFixedPositionCard extends StatelessWidget {
  final Offset _fixedPosition;
  final KtList<Cell> _cellsIncludingPosition;
  final Function(Offset) _onAccept;
  final Function _onCancel;

  const MapPickerFixedPositionCard({
    Key key,
    @required Offset fixedPosition,
    @required KtList<Cell> cellsIncludingPosition,
    @required Function(Offset) onAccept,
    @required Function onCancel,
  })  : assert(fixedPosition != null),
        assert(cellsIncludingPosition != null),
        assert(onAccept != null),
        assert(onCancel != null),
        _fixedPosition = fixedPosition,
        _cellsIncludingPosition = cellsIncludingPosition,
        _onAccept = onAccept,
        _onCancel = onCancel,
        super(key: key);

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
            // _buildCellsTile(context),
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('CANCEL'),
                  onPressed: () => _onCancel(),
                ),
                FlatButton(
                  child: const Text('OK'),
                  onPressed: () => _onAccept(_fixedPosition),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  ListTile _buildPositionTile(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.map,
        color: Colors.white,
      ),
      title: Column(
        children: [
          SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                child: Text('X: ${_fixedPosition.dx.toStringAsFixed(3)}'),
              ),
              Container(
                child: Text('Y: ${_fixedPosition.dy.toStringAsFixed(3)}'),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              child: Text('Cells: '),
            ),
            Container(
              child: Text('${_cellsToString()}'),
            ),
          ],
        ),
        ],
      ),
    );
  }

  Widget _buildCellsTile(BuildContext context) {
    if (_cellsIncludingPosition.size == 0) {
      return Empty();
    } else {
      return ListTile(
        leading: Icon(
          Icons.gps_fixed,
          color: Colors.white,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              child: Text('LOCATIONS: '),
            ),
            Container(
              child: Text('${_cellsToString()}'),
            ),
          ],
        ),
      );
    }
  }

  String _cellsToString() {
    String commaSeparatedCells = '';

    for (int i = 0; i < _cellsIncludingPosition.size; i++) {
      if (i + 1 < _cellsIncludingPosition.size) {
        commaSeparatedCells +=
            _cellsIncludingPosition[i].name.getOrCrash() + ',';
      } else {
        commaSeparatedCells += _cellsIncludingPosition[i].name.getOrCrash();
      }
    }
    return commaSeparatedCells;
  }
}
