part of 'scanned_networks_bloc.dart';

@freezed
abstract class ScannedNetworksEvent with _$ScannedNetworksEvent {
  const factory ScannedNetworksEvent.initialized(Option<String> projectId) = _Initialized;
  const factory ScannedNetworksEvent.refreshed(Option<String> projectId) = _Refreshed;
}
