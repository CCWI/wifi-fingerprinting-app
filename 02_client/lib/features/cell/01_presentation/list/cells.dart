import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/01_presentation/routes/router.gr.dart';
import '../../../../common/01_presentation/widgets/app_scaffold.dart';
import '../../../../common/01_presentation/widgets/centered_loading_screen.dart';
import '../../../../common/03_domain/value_objects/value_objects.dart';
import '../../../../common/05_utils/injection/inject.dart';
import '../../02_application/list/cells_bloc.dart';
import '../../03_domain/entities/cell.dart';
import 'widgets/cell_list.dart';

class Cells extends StatelessWidget implements AutoRouteWrapper {
  final UniqueId projectId;

  const Cells({
    Key key,
    this.projectId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: Text('Cells'),
      bodyColor: Theme.of(context).primaryColor,
      body: BlocConsumer<CellsBloc, CellsState>(
        listener: (context, state) {
          state.maybeMap(
            loadFailure: (state) {
              FlushbarHelper.createError(
                message: state.cellFailure.maybeMap(
                  insufficientPermissions: (_) => 'Insufficient permissions',
                  unableToRead: (_) => 'Could not read cells.',
                  unexpected: (_) => 'Unexpected error occured while reading.',
                  orElse: () => null,
                ),
              ).show(context);
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.maybeMap(
            initial: (_) => CenteredLoadingScreen(),
            loadInProgress: (_) => CenteredLoadingScreen(),
            loadSuccess: (state) {
              return CellList(
                cells: state.cells,
                onLongPress: (cell) => _onEditCell(cell, context),
              );
            },
            orElse: () {},
          );
        },
      ),
      fab: FloatingActionButton(
        onPressed: () => _onAddNewCell(context),
        child: Icon(Icons.add),
        tooltip: 'Add new cell',
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) =>
            getIt<CellsBloc>()..add(CellsEvent.watchAllStarted(projectId)),
        child: this,
      );

  void _onEditCell(Cell cellToEdit, BuildContext context) {
    ExtendedNavigator.of(context).push(
      Routes.cellForm,
      arguments: CellFormArguments(
        projectId: projectId,
        editedCell: cellToEdit,
      ),
    );
  }

  void _onAddNewCell(BuildContext context) {
    ExtendedNavigator.of(context).push(
      Routes.cellForm,
      arguments: CellFormArguments(
        projectId: projectId,
      ),
    );
  }
}
