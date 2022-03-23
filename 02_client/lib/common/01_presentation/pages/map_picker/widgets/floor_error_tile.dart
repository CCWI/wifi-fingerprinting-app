import 'package:flutter/material.dart';

import '../../../../03_domain/entities/floormap/floor_map.dart';

class FloorErrorTile extends StatelessWidget {
  final FloorMap _errorFloor;

  const FloorErrorTile({
    Key key,
    FloorMap errorFloor,
  })  : _errorFloor = errorFloor,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Invalid floor map',
        style: Theme.of(context).textTheme.subtitle1.copyWith(
              color: Theme.of(context).errorColor,
            ),
      ),
      subtitle: Text(
        'Reason: ${_errorFloor.failureOption.fold(() => '', (f) => f.toString())}',
        style: Theme.of(context).textTheme.overline,
      ),
      trailing: Icon(
        Icons.error,
        color: Theme.of(context).errorColor,
      ),
    );
  }
}