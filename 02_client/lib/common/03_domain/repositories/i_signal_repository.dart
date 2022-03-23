import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

import '../entities/signal/signal.dart';
import '../failures/signal_failure.dart';
import '../value_objects/value_objects.dart';

abstract class ISignalRepository {
  Future<Either<SignalFailure, KtList<Signal>>> fetchSignals();
  Future<Either<SignalFailure, KtList<Signal>>> fetchSignalsFilteredBySSID(KtList<SSID> ssids);
  Future<Either<SignalFailure, KtList<Signal>>> fetchSignalsFilteredByBSSID(KtList<BSSID> bssids);
  Future<Either<SignalFailure, KtList<Signal>>> fetchSignalsExceptBSSID(KtList<BSSID> bssidsToBeExcluded);
}
