part of 'access_points_bloc.dart';

@freezed
abstract class AccessPointsState with _$AccessPointsState {
  const factory AccessPointsState.initial() = Initial;
  const factory AccessPointsState.loadInProgress() = DataTransferInProgress;
  const factory AccessPointsState.loadSuccess(KtList<AccessPoint> accessPoints) = LoadSuccess;
  const factory AccessPointsState.loadFailure(AccessPointFailure accessPointFailure) = LoadFailure;
} 
