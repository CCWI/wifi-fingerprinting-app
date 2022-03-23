import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../02_application/map_picker/map_picker_bloc.dart';
import '../../../../03_domain/entities/floormap/floor_map.dart';
import '../../../../03_domain/entities/position/position.dart';
import '../../../../03_domain/value_objects/value_objects.dart';
import '../../../widgets/centered_loading_screen.dart';
import '../../../widgets/empty.dart';
import 'floors_select.dart';
import 'map_picker_view.dart';

class MapPickerWrapper extends StatefulWidget {
  final UniqueId _projectId;
  final Position _resultPosition;
  final CoordinateValueController _controller;

  const MapPickerWrapper({
    Key key,
    @required UniqueId projectId,
    @required CoordinateValueController controller,
    Position resultPosition,
  })  : assert(projectId != null),
        assert(controller != null),
        _projectId = projectId,
        _resultPosition = resultPosition,
        _controller = controller,
        super(key: key);

  @override
  _MapPickerWrapperState createState() => _MapPickerWrapperState();
}

class _MapPickerWrapperState extends State<MapPickerWrapper> {
  CoordinateValueController controller;

  @override
  void initState() {
    super.initState();
    controller = widget._controller;
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => setState(() {
        context.bloc<MapPickerBloc>()
          ..add(MapPickerEvent.initialized(
              widget._projectId, widget._resultPosition));
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MapPickerBloc, MapPickerState>(
      listener: (context, state) => state.maybeMap(
        loadFailure: (state) {
          return FlushbarHelper.createError(
            duration: const Duration(seconds: 3),
            message: state.failure.maybeMap(
              insufficientPermissions: (_) => 'Insufficient permissions',
              unableToUpdate: (_) => 'Couldn\'t update the project.',
              unexpected: (_) => 'Unexpected error occured.',
              orElse: () => null,
            ),
          ).show(context);
        },
        orElse: () => null,
      ),
      builder: (context, state) {
        return state.maybeMap(
          initial: (_) => CenteredLoadingScreen(),
          loadInProgress: (_) => CenteredLoadingScreen(),
          floorsLoadSuccess: (state) => FloorsSelect(
            floors: state.floors,
            onTap: (floor) => _onFloorSelected(floor, context),
          ),
          imageLoadSuccess: (state) => MapPickerView(
            image: state.image,
            controller: controller,
            cartesianDimensions: state.cartesianDimensions,
            fixedPosition: widget._resultPosition != null
                ? Offset(widget._resultPosition.x.getOrCrash(),
                    widget._resultPosition.y.getOrCrash())
                : null,
            displayOnly: widget._resultPosition != null,
          ),
          orElse: () => Empty(),
        );
      },
    );
  }

  void _onFloorSelected(FloorMap floor, BuildContext context) {
    final mapPickerBloc = context.bloc<MapPickerBloc>();
    mapPickerBloc.add(MapPickerEvent.floorPicked(floor));
  }
}
