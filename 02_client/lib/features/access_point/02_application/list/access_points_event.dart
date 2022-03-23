part of 'access_points_bloc.dart';

@freezed
abstract class AccessPointsEvent with _$AccessPointsEvent {
  const factory AccessPointsEvent.watchAllStarted(UniqueId projectId) = _WatchAllStarted;
  const factory AccessPointsEvent.accessPointsReceived(Either<AccessPointFailure, KtList<AccessPoint>> failureOrProjects) = _AccessPointsReceived;
}
