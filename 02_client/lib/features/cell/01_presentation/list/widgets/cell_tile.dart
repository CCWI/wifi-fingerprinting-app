import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';

import '../../../../../common/03_domain/entities/position/position.dart';
import '../../../03_domain/entities/cell.dart';

class CellTile extends StatelessWidget {
  final Cell _cell;
  final void Function(Cell) _onLongPress;

  const CellTile({
    Key key,
    Cell cell,
    void Function(Cell) onLongPress,
  })  : _cell = cell,
        _onLongPress = onLongPress,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Container(
        padding: EdgeInsets.only(top: 7.0),
        child: Text(
          _cell.name.getOrCrash(),
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      subtitle: Column(
        children: <Widget>[
          Builder(
            builder: (context) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: _cell.vertices
                    .getOrCrash()
                    .map((vertex) => _buildVertex(context, vertex))
                    .asList(),
              );
            },
          ),
        ],
      ),
      trailing: Icon(
        Icons.location_on,
        color: Theme.of(context).primaryColorLight,
      ),
      onLongPress: () => _onLongPress(_cell),
    );
  }

  Widget _buildVertex(BuildContext context, Position vertex) {
    return Column(
      children: <Widget>[
        SizedBox(height: 7.0),
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            'X: ${vertex.x.getOrCrash()}',
            style: Theme.of(context).textTheme.overline,
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            'Y: ${vertex.y.getOrCrash()}',
            style: Theme.of(context).textTheme.overline,
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            'FLOOR: ${vertex.floor.getOrCrash()}',
            style: Theme.of(context).textTheme.overline,
          ),
        ),
      ],
    );
  }
}
