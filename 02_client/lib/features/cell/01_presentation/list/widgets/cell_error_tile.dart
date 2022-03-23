import 'package:flutter/material.dart';

import '../../../03_domain/entities/cell.dart';


class CellErrorTile extends StatelessWidget {
  final Cell _errorCell;

  const CellErrorTile({
    Key key,
    Cell errorCell,
  })  : _errorCell = errorCell,
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
        'Reason: ${_errorCell.failureOption.fold(() => '', (f) => f.toString())}',
        style: Theme.of(context).textTheme.overline,
      ),
      trailing: Icon(
        Icons.error,
        color: Theme.of(context).errorColor,
      ),
    );
  }
}