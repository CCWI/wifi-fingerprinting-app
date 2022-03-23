import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'inject.config.dart';
// final getIt = GetIt.instance;

// @injectableInit
// void configureInjection(String environment) => $initGetIt(getIt,environment: environment);

// abstract class Env {
//   static const dev = 'dev';
//   static const prod = 'prod';
//   static const test = 'test';
// }

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
void configureDependencies(String env) => $initGetIt(getIt, environment: env);