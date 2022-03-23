part of 'map_picker_bloc.dart';

@freezed
abstract class MapPickerState with _$MapPickerState {
  const factory MapPickerState.initial() = Initial;
  const factory MapPickerState.loadInProgress() = LoadInProgress;
  const factory MapPickerState.floorsLoadSuccess(List25<FloorMap> floors) = FloorsLoadSuccess;
  const factory MapPickerState.imageLoadSuccess(ImageProvider<dynamic> image, Offset cartesianDimensions) = ImageLoadSuccess;
  const factory MapPickerState.loadFailure(ProjectFailure failure) = LoadFailure;
}
