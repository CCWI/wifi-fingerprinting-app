import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../routes/router.gr.dart';
import '../../widgets/bottom_button_list.dart';
import 'widgets/location_permission_info.dart';
import 'widgets/logo.dart';
import 'widgets/logo_text.dart';

class Landing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        color: Theme.of(context).accentColor,
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 8.5,
                bottom: MediaQuery.of(context).size.height / 12,
              ),
              child: Text(
                'Indoor Fingerprinting',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Logo(),
            LogoText(
              text: 'Hochschule München',
            ),
            LocationPermissionInfo().wrappedRoute(context),
            Spacer(),
            BottomButtonList(
              bottomButtonDetails: [
                BottomButtonDetail(
                  text: 'networks',
                  icon: Icons.wifi,
                  tooltipText: 'Show received networks',
                  onPressed: () => _navigateToNetworkList(context),
                ),
                BottomButtonDetail(
                  text: 'fingerprinting',
                  icon: Icons.gps_fixed,
                  tooltipText: 'Go to fingerprinting projects',
                  onPressed: () => _navigateToProjectList(context),
                ),
                BottomButtonDetail(
                  text: 'settings',
                  icon: Icons.settings,
                  tooltipText: 'Go to settings',
                  onPressed: () => _navigateToSettings(context),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToNetworkList(BuildContext context) {
    ExtendedNavigator.of(context).push(Routes.networks);
  }

  void _navigateToProjectList(BuildContext context) {
    ExtendedNavigator.of(context).push(Routes.projects);
  }

  void _navigateToSettings(BuildContext context) {
    ExtendedNavigator.of(context).push(Routes.settings);
  }
}
