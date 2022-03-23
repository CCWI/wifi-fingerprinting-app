part of 'map_picker_bloc.dart';

@freezed
abstract class MapPickerEvent with _$MapPickerEvent {
  const factory MapPickerEvent.initialized(UniqueId projectId, [Position resultPosition]) = _Initialized;
  const factory MapPickerEvent.floorPicked(FloorMap floor) = _FloorPicked;
}
