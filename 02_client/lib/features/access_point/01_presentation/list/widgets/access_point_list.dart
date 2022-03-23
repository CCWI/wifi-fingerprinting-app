import 'package:flutter/material.dart';
import 'package:kt_dart/kt.dart';

import '../../../../../common/01_presentation/widgets/centered_info_screen.dart';
import '../../../03_domain/entities/access_point.dart';
import 'access_point_error_tile.dart';
import 'access_point_tile.dart';

class AccessPointList extends StatelessWidget {
  final KtList<AccessPoint> accessPoints;
  final void Function(AccessPoint) onLongPress;

  const AccessPointList({
    Key key,
    @required this.accessPoints,
    @required this.onLongPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (accessPoints.isEmpty()) {
      return CenteredInfoScreen(
        icon: Icon(
          Icons.sentiment_dissatisfied,
          color: Colors.white,
        ),
        text: Text('NO ACCESS POINTS AVAILABLE',
            style: Theme.of(context).textTheme.overline),
        subText:
            Text('ADD A NEW ONE', style: Theme.of(context).textTheme.overline),
      );
    } else {
      return ListView.separated(
        itemCount: accessPoints.size,
        itemBuilder: (context, index) {
          final accessPoint = accessPoints[index];
          if (accessPoint.failureOption.isSome()) {
            return AccessPointErrorTile(errorAccessPoint: accessPoint);
          }
          return AccessPointTile(
            accessPoint: accessPoint,
            onLongPress: onLongPress,
          );
        },
        separatorBuilder: (context, _) => Divider(
          color: Theme.of(context).primaryColorLight,
        ),
      );
    }
  }
}
