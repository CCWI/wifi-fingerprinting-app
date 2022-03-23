import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../02_application/scannednetworks/scanned_networks_bloc.dart';
import '../../../05_utils/injection/inject.dart';
import '../../widgets/app_scaffold.dart';
import '../../widgets/centered_info_screen.dart';
import '../../widgets/centered_loading_screen.dart';
import 'widgets/networks_list.dart';

class Networks extends StatelessWidget implements AutoRouteWrapper {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: Text('Scanned Networks'),
      bodyColor: Theme.of(context).accentColor,
      body: BlocConsumer<ScannedNetworksBloc, ScannedNetworksState>(
        listener: (context, state) {
          if (state is LoadFailure) {
            FlushbarHelper.createError(
              message: state.signalFailure.map(
                unexpected: (_) =>
                    'Unexpected error occured while scanning networks',
                insufficientPermissions: (_) =>
                    'Cannot scan networks. Are location permissions granted?',
                unableToScanNetworks: (_) => 'Could not scan networks.',
              ),
            ).show(context);
          }
        },
        builder: (context, state) {
          return state.maybeMap(
            initial: (_) => CenteredLoadingScreen(),
            loadInProgress: (_) => CenteredLoadingScreen(),
            loadSuccess: (success) => NetworksList(
              networks: success.signals,
              onRefresh: _onScanNetworksRefresh,
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
            refreshSuccess: (success) {
              context.bloc<ScannedNetworksBloc>().refreshCompleter.complete();
              return NetworksList(
                networks: success.signals,
                onRefresh: _onScanNetworksRefresh,
              );
            },
            orElse: () => Container(),
          );
        },
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) => getIt<ScannedNetworksBloc>()
          ..add(ScannedNetworksEvent.initialized(none())),
        child: this,
      );

  Future<void> _onScanNetworksRefresh(BuildContext context) {
    final scannedNetworksBloc = context.bloc<ScannedNetworksBloc>();
    scannedNetworksBloc.add(ScannedNetworksEvent.refreshed(none()));
    return scannedNetworksBloc.refreshCompleter.future;
  }
}
