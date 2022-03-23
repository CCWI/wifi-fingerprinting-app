import 'package:auto_route/auto_route.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:verve/verve.dart';

import 'common/01_presentation/routes/router.gr.dart' as generated;
import 'common/05_utils/injection/inject.dart';

void main() async {
  configureDependencies('prod');
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(WifiFingerprintingApp());
}

class WifiFingerprintingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: ExtendedNavigator.builder<generated.Router>(
        router: generated.Router(),
        initialRoute: generated.Routes.landing,
        builder: (context, extendedNav) => Theme(
          data: verveSwatch(theme: VerveTheme.amati),
          child: extendedNav,
        ),
      ),
    );
  }
}
