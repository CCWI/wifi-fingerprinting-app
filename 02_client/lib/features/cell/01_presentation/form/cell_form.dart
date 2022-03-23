import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/01_presentation/routes/router.gr.dart';
import '../../../../common/03_domain/value_objects/value_objects.dart';
import '../../../../common/05_utils/injection/inject.dart';
import '../../02_application/form/cell_form_bloc.dart';
import '../../03_domain/entities/cell.dart';
import 'widgets/cell_form_scaffold.dart';

class CellForm extends StatelessWidget implements AutoRouteWrapper {
  final UniqueId projectId;
  final Cell editedCell;

  const CellForm({
    Key key,
    this.editedCell,
    this.projectId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CellFormBloc, CellFormState>(
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
                    unableToUpdate: (_) => 'Couldn\'t update the cell.',
                    unexpected: (_) => 'Unexpected error occured.',
                    orElse: () => null,
                  ),
                ).show(context);
              },
              (_) {
                ExtendedNavigator.of(context).popUntil(
                    (route) => route.settings.name == Routes.cells);
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
                    unableToDelete: (_) => 'Couldn\'t delete the cell.',
                    unexpected: (_) => 'Unexpected error occured.',
                    orElse: () => null,
                  ),
                ).show(context);
              },
              (_) {
                ExtendedNavigator.of(context).popUntil(
                    (route) => route.settings.name == Routes.cells);
              },
            );
          },
        );
      },
      buildWhen: (p, c) => p.isSaving != c.isSaving,
      builder: (context, state) {
        return CellFormScaffold();
      },
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider<CellFormBloc>(
        create: (context) => getIt<CellFormBloc>()
          ..add(
              CellFormEvent.initialized(optionOf<Cell>(editedCell), projectId)),
        child: this,
      );
}
