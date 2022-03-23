import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/01_presentation/routes/router.gr.dart';
import '../../../../common/05_utils/injection/inject.dart';
import '../../02_application/form/project_form_bloc.dart';
import '../../03_domain/entities/project.dart';
import 'widgets/project_form_scaffold.dart';

class ProjectForm extends StatelessWidget implements AutoRouteWrapper {
  final Project editedProject;

  const ProjectForm({
    Key key,
    this.editedProject,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProjectFormBloc, ProjectFormState>(
      listenWhen: (p, c) =>
          p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption ||
          p.deleteFailureOrSuccessOption != c.deleteFailureOrSuccessOption,
      listener: (context, state) {
        state.saveFailureOrSuccessOption.fold(
          () {},
          (either) {
            either.fold(
              (failure) {
                FlushbarHelper.createError(
                  duration: const Duration(seconds: 3),
                  message: failure.maybeMap(
                    insufficientPermissions: (_) => 'Insufficient permissions',
                    unableToUpdate: (_) => 'Couldn\'t update the project.',
                    unexpected: (_) => 'Unexpected error occured.',
                    orElse: () => null,
                  ),
                ).show(context);
              },
              (_) {
                ExtendedNavigator.of(context).popUntil(
                    (route) => route.settings.name == Routes.projects);
              },
            );
          },
        );
        state.deleteFailureOrSuccessOption.fold(
          () {},
          (either) {
            either.fold(
              (failure) {
                FlushbarHelper.createError(
                  duration: const Duration(seconds: 3),
                  message: failure.maybeMap(
                    insufficientPermissions: (_) => 'Insufficient permissions',
                    unableToDelete: (_) => 'Couldn\'t delete the project.',
                    unexpected: (_) => 'Unexpected error occured.',
                    orElse: () => null,
                  ),
                ).show(context);
              },
              (_) {
                ExtendedNavigator.of(context).popUntil(
                    (route) => route.settings.name == Routes.projects);
              },
            );
          },
        );
      },
      buildWhen: (p, c) => p.isSaving != c.isSaving,
      builder: (context, state) {
        return ProjectFormScaffold();
      },
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider<ProjectFormBloc>(
        create: (context) => getIt<ProjectFormBloc>()
          ..add(ProjectFormEvent.initialized(optionOf<Project>(editedProject))),
        child: this,
      );
}
