import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/03_domain/value_objects/value_objects.dart';
import '../../../../common/05_utils/injection/inject.dart';
import '../../02_application/form/access_point_form_bloc.dart';
import '../../03_domain/entities/access_point.dart';
import 'widgets/access_point_form_scaffold.dart';

class AccessPointForm extends StatelessWidget implements AutoRouteWrapper {
  final AccessPoint editedAccessPoint;
  final UniqueId projectId;

  const AccessPointForm({
    Key key,
    this.editedAccessPoint,
    @required this.projectId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AccessPointFormBloc, AccessPointFormState>(
      listenWhen: (p, c) =>
          p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
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
                    unableToUpdate: (_) => 'Couldn\'t update the access point',
                    unexpected: (_) => 'Unexpected error occured',
                    orElse: () => null,
                  ),
                ).show(context);
              },
              (_) {
                ExtendedNavigator.of(context).pop();
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
                    unableToDelete: (_) => 'Couldn\'t delete the access point',
                    unexpected: (_) => 'Unexpected error occured',
                    orElse: () => null,
                  ),
                ).show(context);
              },
              (_) {
                ExtendedNavigator.of(context).pop();
                ExtendedNavigator.of(context).pop();
              },
            );
          },
        );
      },
      buildWhen: (p, c) => p.isSaving != c.isSaving,
      builder: (context, state) {
        return AccessPointFormScaffold();
      },
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) => getIt<AccessPointFormBloc>()
          ..add(AccessPointFormEvent.initialized(
              optionOf<AccessPoint>(editedAccessPoint), projectId)),
        child: this,
      );
}
