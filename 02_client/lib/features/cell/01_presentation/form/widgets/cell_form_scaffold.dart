import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../../../../common/01_presentation/widgets/app_scaffold.dart';
import '../../../../../common/01_presentation/widgets/delete_alert_dialog.dart';
import '../../../../../common/03_domain/value_objects/value_objects.dart';
import '../../../02_application/form/cell_form_bloc.dart';
import '../misc/vertices_presentation_class.dart';
import 'cell_add_vertex_tile.dart';
import 'cell_floor_field.dart';
import 'cell_name_field.dart';
import 'cell_vertices.dart';

class CellFormScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      bodyColor: Theme.of(context).accentColor,
      title: BlocBuilder<CellFormBloc, CellFormState>(
        buildWhen: (p, c) => p.isEditing != c.isEditing,
        builder: (context, state) => Text(state.isEditing
            ? 'Edit \'${state.cell.name.getOrCrash()}\''
            : 'New Cell'),
      ),
      actions: <Widget>[
        BlocBuilder<CellFormBloc, CellFormState>(
          buildWhen: (p, c) => p.isEditing != c.isEditing,
          builder: (context, state) {
            return Visibility(
              visible: state.isEditing,
              child: IconButton(
                icon: Icon(Icons.delete_forever),
                onPressed: () => showDialog(
                  context: context,
                  builder: (_) => DeleteAlertDialog(
                    title: 'Delete Cell?',
                    content:
                        'Do you really want to delete ${state.cell.name.getOrCrash()} ?',
                    withInput: true,
                    textToMatch: 'Delete',
                    deleteCall: () => onDeleteCell(context, state.cell.id),
                  ),
                ),
              ),
            );
          },
        ),
        Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(Icons.save),
              onPressed: () => onSaveCell(context),
            );
          },
        ),
      ],
      body: BlocBuilder<CellFormBloc, CellFormState>(
        buildWhen: (p, c) => p.showErrorMessages != c.showErrorMessages,
        builder: (context, state) {
          return ChangeNotifierProvider(
            create: (_) => Vertices(),
            child: Form(
              autovalidate: state.showErrorMessages,
              child: const CustomScrollView(
                slivers: <Widget>[
                  SliverToBoxAdapter(child: CellNameField()),
                  // SliverToBoxAdapter(child: CellCoordinatesRow()),
                  SliverToBoxAdapter(child: CellFloorField()),
                  CellVertices(),
                  SliverToBoxAdapter(child: CellAddVertexTile()),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void onDeleteCell(BuildContext context, UniqueId cellId) {
    final cellFormBloc = context.bloc<CellFormBloc>();
    cellFormBloc.add(CellFormEvent.deleted(cellId));
  }

  void onSaveCell(BuildContext context) {
    final cellFormBloc = context.bloc<CellFormBloc>();
    cellFormBloc.add(const CellFormEvent.saved());
  }
}
