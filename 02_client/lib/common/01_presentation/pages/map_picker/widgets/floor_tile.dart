import 'package:flutter/material.dart';

import '../../../../03_domain/entities/floormap/floor_map.dart';

class FloorTile extends StatelessWidget {
  final FloorMap _floor;
  final void Function(FloorMap) _onTap;

  const FloorTile({
    @required FloorMap floor,
    @required void Function(FloorMap) onTap,
    Key key,
  })  : _floor = floor,
        _onTap = onTap,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Container(
        padding: EdgeInsets.only(top: 7.0),
        child: Text(
          'Floor ${_floor.floor.getOrCrash()}',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      subtitle: Column(
        children: <Widget>[
          SizedBox(height: 7.0),
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              'LOCAL: ${_floor.imagePath.getOrCrash()}',
              style: Theme.of(context).textTheme.overline,
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              'SCALE: 1 : ${_floor.imageScale.getOrCrash()}',
              style: Theme.of(context).textTheme.overline,
            ),
          ),
        ],
      ),
      trailing: Icon(
        Icons.map,
        color: Theme.of(context).primaryColorLight,
      ),
      onTap: () => _onTap(_floor),
    );
  }
}
