import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:wifi_hunter/wifi_hunter.dart';

import '../../03_domain/entities/signal/signal.dart';
import '../../03_domain/failures/signal_failure.dart';
import '../../03_domain/repositories/i_signal_repository.dart';
import '../../03_domain/value_objects/signal_value_objects.dart';
import '../../03_domain/value_objects/value_objects.dart';

@Injectable(as: ISignalRepository)
class SignalRepository implements ISignalRepository {
  WiFiInfoWrapper _wifiObject;

  @override
  Future<Either<SignalFailure, KtList<Signal>>> fetchSignals() async {
    return await _scanNetworks();
  }

  @override
  Future<Either<SignalFailure, KtList<Signal>>> fetchSignalsExceptBSSID(
      KtList<BSSID> bssidsToBeExcluded) async {
    final failureOrNetworks = await _scanNetworks();
    return failureOrNetworks.fold(
      (failure) => left(failure),
      (networks) {
        if (bssidsToBeExcluded.isNotEmpty() || networks.isNotEmpty()) {
          final networksList = networks.toMutableList().asList();
          networksList.retainWhere(
              (network) => !bssidsToBeExcluded.contains(network.bssid));
          networks = networksList.kt.toList();
        }
        return right(networks);
      },
    );
  }

  @override
  Future<Either<SignalFailure, KtList<Signal>>> fetchSignalsFilteredByBSSID(
      KtList<BSSID> bssids) async {
    final failureOrNetworks = await _scanNetworks();
    return failureOrNetworks.fold(
      (failure) => left(failure),
      (networks) {
        if (bssids.isNotEmpty() || networks.isNotEmpty()) {
          final networksList = networks.toMutableList().asList();
          networksList.retainWhere((network) => bssids.contains(network.bssid));
          networks = networksList.kt.toList();
        }
        return right(networks);
      },
    );
  }

  @override
  Future<Either<SignalFailure, KtList<Signal>>> fetchSignalsFilteredBySSID(
      KtList<SSID> ssids) async {
    final failureOrNetworks = await _scanNetworks();
    return failureOrNetworks.fold(
      (failure) => left(failure),
      (networks) {
        if (ssids.isNotEmpty() || networks.isNotEmpty()) {
          final networksList = networks.toMutableList().asList();
          networksList.retainWhere((network) => ssids.contains(network.ssid));
          networks = networksList.kt.toList();
        }
        return right(networks);
      },
    );
  }

  Future<Either<SignalFailure, KtList<Signal>>> _scanNetworks() async {
    try {
      _wifiObject = await WiFiHunter.huntRequest;

      List<Signal> fetchedSignals = List<Signal>();
      for (int i = 0; i < _wifiObject.ssids.length; i++) {
        //ssids can also be an empty string, which looks weird in the application
        // so we're changing it
        final validatedSSID =
            _wifiObject.ssids.whereType<String>().elementAt(i) == ''
                ? 'NO_SSID_NAME_SET'
                : _wifiObject.ssids.whereType<String>().elementAt(i);

        fetchedSignals.add(
          Signal(
            ssid: SSID(validatedSSID),
            bssid: BSSID(_wifiObject.bssids.whereType<String>().elementAt(i)),
            rss: RSS(_wifiObject.signalStrengths.whereType<int>().elementAt(i).toDouble()),
            frequency: Frequency(_wifiObject.frequenies.whereType<int>().elementAt(i)),
          ),
        );
      }

      return right(fetchedSignals.kt.toList());
    } catch (e) {
      if (e is PlatformException) {
        return left(const SignalFailure.unableToScanNetworks());
      } else {
        return left(const SignalFailure.unexpected());
      }
      // we need to add some error cases later
    }
  }
}
