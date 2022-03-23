import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/01_presentation/routes/router.gr.dart';
import '../../../../common/01_presentation/widgets/app_scaffold.dart';
import '../../../../common/01_presentation/widgets/centered_loading_screen.dart';
import '../../../../common/01_presentation/widgets/empty.dart';
import '../../../../common/03_domain/value_objects/value_objects.dart';
import '../../../../common/05_utils/injection/inject.dart';
import '../../02_application/list/access_points_bloc.dart';
import '../../03_domain/entities/access_point.dart';
import 'widgets/access_point_list.dart';

class AccessPoints extends StatelessWidget implements AutoRouteWrapper {
  final UniqueId projectId;

  const AccessPoints({
    Key key,
    this.projectId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: Text('Access Points'),
      bodyColor: Theme.of(context).primaryColor,
      body: BlocConsumer<AccessPointsBloc, AccessPointsState>(
        listener: (context, state) {
          state.maybeMap(
            loadFailure: (state) {
              FlushbarHelper.createError(
                message: state.accessPointFailure.maybeMap(
                  insufficientPermissions: (_) => 'Insufficient permissions',
                  unableToRead: (_) => 'Could not read access points.',
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
              return AccessPointList(
                accessPoints: state.accessPoints,
                onLongPress: (accessPoint) => _onEditAccessPoint(accessPoint, context),
              );
            },
            orElse: () => Empty(),
          );
        },
      ),
      fab: FloatingActionButton(
        onPressed: () => _onAddNewAccessPoint(context),
        child: Icon(Icons.add),
        tooltip: 'Add new access point',
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) => getIt<AccessPointsBloc>()
          ..add(AccessPointsEvent.watchAllStarted(projectId)),
        child: this,
      );

  void _onEditAccessPoint(AccessPoint accessPointToEdit, BuildContext context) {
    ExtendedNavigator.of(context).push(
      Routes.accessPointForm,
      arguments: AccessPointFormArguments(
        editedAccessPoint: accessPointToEdit,
        projectId: projectId,
      ),
    );
  }

  void _onAddNewAccessPoint(BuildContext context) {
    ExtendedNavigator.of(context).push(
      Routes.accessPointSelectNetwork,
      arguments: AccessPointSelectNetworkArguments(
        projectId: projectId,
      ),
    );
  }
}
