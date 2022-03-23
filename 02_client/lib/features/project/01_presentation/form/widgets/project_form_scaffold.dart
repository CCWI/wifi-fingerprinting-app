import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../../../../common/01_presentation/widgets/app_scaffold.dart';
import '../../../../../common/01_presentation/widgets/delete_alert_dialog.dart';
import '../../../../../common/03_domain/value_objects/value_objects.dart';
import '../../../02_application/form/project_form_bloc.dart';
import '../misc/floors_presentation_class.dart';
import 'project_add_floor_map_tile.dart';
import 'project_floor_maps.dart';
import 'project_max_coordinates_row.dart';
import 'project_name_field.dart';

class ProjectFormScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      bodyColor: Theme.of(context).accentColor,
      title: BlocBuilder<ProjectFormBloc, ProjectFormState>(
        buildWhen: (p, c) => p.isEditing != c.isEditing,
        builder: (context, state) => Text(state.isEditing
            ? 'Edit \'${state.project.name.getOrCrash()}\''
            : 'New Project'),
      ),
      actions: <Widget>[
        BlocBuilder<ProjectFormBloc, ProjectFormState>(
          buildWhen: (p, c) => p.isEditing != c.isEditing,
          builder: (context, state) {
            return Visibility(
              visible: state.isEditing,
              child: IconButton(
                icon: Icon(Icons.delete_forever),
                onPressed: () => showDialog(
                  context: context,
                  builder: (_) => DeleteAlertDialog(
                    title: 'Delete Project?',
                    content:
                        'Do you really want to delete ${state.project.name.getOrCrash()} ?',
                    withInput: true,
                    textToMatch: 'Delete',
                    deleteCall: () =>
                        onDeleteProject(context, state.project.id),
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
              onPressed: () => onSaveProject(context),
            );
          },
        ),
      ],
      body: BlocBuilder<ProjectFormBloc, ProjectFormState>(
        buildWhen: (p, c) => p.showErrorMessages != c.showErrorMessages,
        builder: (context, state) {
          return ChangeNotifierProvider(
            create: (_) => Floors(),
            child: Form(
              autovalidate: state.showErrorMessages,
              child: const CustomScrollView(
                slivers: <Widget>[
                  SliverToBoxAdapter(child: ProjectNameField()),
                  SliverToBoxAdapter(child: ProjectMaxCoordinatesRow()),
                  ProjectFloorMaps(),
                  SliverToBoxAdapter(child: ProjectAddFloorMapTile()),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void onDeleteProject(BuildContext context, UniqueId id) {
    final projectFormBloc = context.bloc<ProjectFormBloc>();
    projectFormBloc.add(ProjectFormEvent.deleted(id));
  }

  void onSaveProject(BuildContext context) {
    final projectFormBloc = context.bloc<ProjectFormBloc>();
    projectFormBloc.add(const ProjectFormEvent.saved());
  }
}
