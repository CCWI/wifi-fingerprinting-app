import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';

import '../../../../../common/01_presentation/widgets/centered_info_screen.dart';
import '../../../03_domain/entities/cell.dart';
import 'cell_error_tile.dart';
import 'cell_tile.dart';

class CellList extends StatelessWidget {
  final KtList<Cell> cells;
  final void Function(Cell) onLongPress;

  const CellList({
    Key key,
    @required this.cells,
    @required this.onLongPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (cells.isEmpty()) {
      return CenteredInfoScreen(
        icon: Icon(
          Icons.sentiment_dissatisfied,
          color: Colors.white,
        ),
        text: Text('NO CELLS AVAILABLE',
            style: Theme.of(context).textTheme.overline),
        subText:
            Text('ADD A NEW ONE', style: Theme.of(context).textTheme.overline),
      );
    } else {
      return ListView.separated(
        itemCount: cells.size,
        itemBuilder: (context, index) {
          final cell = cells[index];
          if (cell.failureOption.isSome()) {
            return CellErrorTile(errorCell: cell);
          }
          return CellTile(
            cell: cell,
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