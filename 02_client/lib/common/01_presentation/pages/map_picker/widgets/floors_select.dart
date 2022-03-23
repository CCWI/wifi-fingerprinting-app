import 'package:flutter/material.dart';

import '../../../../03_domain/entities/floormap/floor_map.dart';
import '../../../../03_domain/value_objects/floor_map_value_objects.dart';
import '../../../widgets/centered_info_screen.dart';
import 'floor_error_tile.dart';
import 'floor_tile.dart';

class FloorsSelect extends StatelessWidget {
  final List25<FloorMap> _floors;
  final void Function(FloorMap) _onTap;

  const FloorsSelect({
    @required List25<FloorMap> floors,
    @required void Function(FloorMap) onTap,
    Key key,
  })  : assert(floors != null),
        assert(onTap != null),
        _floors = floors,
        _onTap = onTap,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final floorList = _floors.getOrCrash();

    if (floorList.isEmpty()) {
      return CenteredInfoScreen(
        icon: Icon(
          Icons.sentiment_dissatisfied,
          color: Colors.white,
        ),
        text: Text('NO FLOOR MAPS AVAILABLE',
            style: Theme.of(context).textTheme.overline),
        subText: Text('EDIT YOUR PROJECT TO ADD A MAP',
            style: Theme.of(context).textTheme.overline),
      );
    } else {
      return Expanded(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView.separated(
            itemCount: floorList.size,
            itemBuilder: (context, index) {
              final floor = floorList[index];
              if (floor.failureOption.isSome()) {
                return FloorErrorTile(errorFloor: floor);
              }
              return FloorTile(
                floor: floor,
                onTap: _onTap,
              );
            },
            separatorBuilder: (context, _) => Divider(
              color: Theme.of(context).primaryColorLight,
            ),
          ),
        ),
      );
    }
  }
}
