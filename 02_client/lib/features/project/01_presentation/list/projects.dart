import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/01_presentation/routes/router.gr.dart';
import '../../../../common/01_presentation/widgets/app_scaffold.dart';
import '../../../../common/01_presentation/widgets/centered_loading_screen.dart';
import '../../../../common/05_utils/injection/inject.dart';
import '../../02_application/list/projects_bloc.dart';
import '../../03_domain/entities/project.dart';
import 'widgets/project_list.dart';

class Projects extends StatelessWidget implements AutoRouteWrapper {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: Text('Fingerprinting Projects'),
      bodyColor: Theme.of(context).primaryColor,
      body: BlocConsumer<ProjectsBloc, ProjectsState>(
        listener: (context, state) {
          state.maybeMap(
            loadFailure: (state) {
              FlushbarHelper.createError(
                message: state.projectFailure.maybeMap(
                  insufficientPermissions: (_) => 'Insufficient permissions',
                  unableToRead: (_) => 'Could not read projects.',
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
              return ProjectList(
                projects: state.projects,
                onTap: (project) => _onOpenProject(project, context),
                onLongPress: (project) => _onEditProject(project, context),
              );
            },
            orElse: () => Container(),
          );
        },
      ),
      fab: FloatingActionButton(
        onPressed: () => _onAddNewProject(context),
        child: Icon(Icons.add),
        tooltip: 'Add new project',
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider<ProjectsBloc>(
        create: (context) =>
            getIt<ProjectsBloc>()..add(ProjectsEvent.watchAllStarted()),
        child: this,
      );

  void _onOpenProject(Project projectToOpen, BuildContext context) {
    ExtendedNavigator.of(context).push(
      Routes.projectMenu,
      arguments: ProjectMenuArguments(
        projectId: projectToOpen.id,
        projectName: projectToOpen.name,
      ),
    );
  }

  void _onEditProject(Project projectToEdit, BuildContext context) {
    ExtendedNavigator.of(context).push(
      Routes.projectForm,
      arguments: ProjectFormArguments(
        editedProject: projectToEdit,
      ),
    );
  }

  void _onAddNewProject(BuildContext context) {
    ExtendedNavigator.of(context).push(
      Routes.projectForm,
      arguments: ProjectFormArguments(
        editedProject: null,
      ),
    );
  }
}
