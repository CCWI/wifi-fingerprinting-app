import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/01_presentation/routes/router.gr.dart';
import '../../../../common/01_presentation/widgets/app_scaffold.dart';
import '../../../../common/01_presentation/widgets/centered_info_screen.dart';
import '../../../../common/01_presentation/widgets/centered_loading_screen.dart';
import '../../../../common/01_presentation/widgets/networks_list.dart';
import '../../../../common/02_application/scannednetworks/scanned_networks_bloc.dart';
import '../../../../common/03_domain/entities/signal/signal.dart';
import '../../../../common/03_domain/value_objects/value_objects.dart';
import '../../../../common/05_utils/injection/inject.dart';

class AccessPointSelectNetwork extends StatelessWidget
    implements AutoRouteWrapper {
  final UniqueId projectId;

  const AccessPointSelectNetwork({
    Key key,
    this.projectId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: Text('New Access Point'),
      bodyColor: Theme.of(context).accentColor,
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              top: 15.0,
              left: 10.0,
              bottom: 15.0,
            ),
            child: Text('Select a Network you want to add..',
                style: Theme.of(context).textTheme.headline6),
          ),
          Expanded(
            child: BlocConsumer<ScannedNetworksBloc, ScannedNetworksState>(
              listener: (context, state) {
                state.maybeMap(
                  loadFailure: (failureState) => FlushbarHelper.createError(
                    message: failureState.signalFailure.map(
                      unexpected: (_) =>
                          'Unexpected error occured while scanning networks',
                      insufficientPermissions: (_) =>
                          'Cannot scan networks. Are location permissions granted?',
                      unableToScanNetworks: (_) => 'Could not scan networks.',
                    ),
                  ),
                  noNetworksFound: (_) => FlushbarHelper.createAction(
                    message: 'Couldn\'t find any network.',
                    button: FlatButton(
                      onPressed: () => _onNetworkScanRefresh(context),
                      child: const Text(
                        'TRY AGAIN',
                        style: TextStyle(
                          color: Colors.yellow,
                        ),
                      ),
                    ),
                  ),
                  orElse: () {},
                );
              },
              builder: (context, state) {
                return state.map(
                  initial: (_) => CenteredLoadingScreen(),
                  loadInProgress: (_) => CenteredLoadingScreen(),
                  loadSuccess: (success) => NetworksList(
                    networks: success.signals,
                    onRefresh: _onNetworkScanRefresh,
                    onTap: _onNetworkSelected,
                  ),
                  refreshSuccess: (success) => NetworksList(
                    networks: success.signals,
                    onRefresh: _onNetworkScanRefresh,
                    onTap: _onNetworkSelected,
                  ),
                  noNetworksFound: (_) => CenteredInfoScreen(
                    icon: Icon(
                      Icons.sentiment_dissatisfied,
                      color: Colors.white,
                    ),
                    text: Text('NO NETWORKS FOUND',
                        style: Theme.of(context).textTheme.overline),
                    subText: Text('ARE YOU IN BUXTEHUDE?',
                        style: Theme.of(context).textTheme.overline),
                  ),
                  loadFailure: (_) => Container(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider<ScannedNetworksBloc>(
        create: (context) => getIt<ScannedNetworksBloc>()
          ..add(ScannedNetworksEvent.initialized(
              optionOf(projectId.getOrCrash()))),
        child: this,
      );

  Future<void> _onNetworkScanRefresh(BuildContext context) {
    final scannedNetworksBloc = context.bloc<ScannedNetworksBloc>();
    scannedNetworksBloc.add(
      ScannedNetworksEvent.refreshed(
        optionOf(
          projectId.getOrCrash(),
        ),
      ),
    );
    return scannedNetworksBloc.refreshCompleter.future;
  }

  void _onNetworkSelected(BuildContext context, Signal network) {
    ExtendedNavigator.of(context).push(
      Routes.accessPointForm,
      arguments: AccessPointFormArguments(
        projectId: projectId,
        editedAccessPoint: network.toEmptyAccessPoint(),
      ),
    );
  }
}
