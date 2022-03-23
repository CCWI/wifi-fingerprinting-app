import 'package:flutter/material.dart';

import '../../../03_domain/entities/access_point.dart';


class AccessPointErrorTile extends StatelessWidget {
  final AccessPoint _errorAccessPoint;

  const AccessPointErrorTile({
    Key key,
    AccessPoint errorAccessPoint,
  })  : _errorAccessPoint = errorAccessPoint,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Invalid access point',
        style: Theme.of(context).textTheme.subtitle1.copyWith(
              color: Theme.of(context).errorColor,
            ),
      ),
      subtitle: Text(
        'Reason: ${_errorAccessPoint.failureOption.fold(() => '', (f) => f.toString())}',
        style: Theme.of(context).textTheme.overline,
      ),
      trailing: Icon(
        Icons.error,
        color: Theme.of(context).errorColor,
      ),
    );
  }
}
