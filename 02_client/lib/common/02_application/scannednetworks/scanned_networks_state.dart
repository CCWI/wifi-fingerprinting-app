part of 'scanned_networks_bloc.dart';

@freezed
abstract class ScannedNetworksState with _$ScannedNetworksState {
  const factory ScannedNetworksState.initial() = Initial;
  const factory ScannedNetworksState.loadInProgress() = LoadInProgress;
  const factory ScannedNetworksState.loadSuccess(KtList<Signal> signals) = LoadSuccess;
  const factory ScannedNetworksState.refreshSuccess(KtList<Signal> signals) = RefreshSuccess;
  const factory ScannedNetworksState.noNetworksFound() = NoNetworksFound;
  const factory ScannedNetworksState.loadFailure(SignalFailure signalFailure) = LoadFailure;  
}
