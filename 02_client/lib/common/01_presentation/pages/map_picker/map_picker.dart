import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';
import 'package:wifi_fingerprinting/common/01_presentation/pages/map_picker/widgets/floors_select.dart';
import 'package:wifi_fingerprinting/common/01_presentation/widgets/centered_loading_screen.dart';
import 'package:wifi_fingerprinting/common/01_presentation/widgets/empty.dart';
import 'package:wifi_fingerprinting/common/03_domain/entities/floormap/floor_map.dart';

import '../../../../features/cell/03_domain/entities/cell.dart';
import '../../../02_application/map_picker/map_picker_bloc.dart';
import '../../../03_domain/entities/position/position.dart';
import '../../../03_domain/value_objects/value_objects.dart';
import '../../../05_utils/injection/inject.dart';
import '../../widgets/app_scaffold.dart';
import 'widgets/map_picker_choose_position_card.dart';
import 'widgets/map_picker_fixed_position_card.dart';
import 'widgets/map_picker_view.dart';
import 'widgets/map_picker_wrapper.dart';

class MapPickerResult extends StatelessWidget {
  final UniqueId _projectId;
  final Position _positionToShow;
  final KtList<Cell> _cellsIncludingPosition;
  final Function(Offset) _onAccept;
  final Function _onCancel;
  CoordinateValueController _controller;

  MapPickerResult({
    Key key,
    @required UniqueId projectId,
    @required Position positionToShow,
    @required KtList<Cell> cellsIncludingPosition,
    @required Function(Offset) onAccept,
    @required Function onCancel,
  })  : assert(positionToShow != null),
        assert(projectId != null),
        _projectId = projectId,
        _positionToShow = positionToShow,
        _cellsIncludingPosition = cellsIncludingPosition,
        _onAccept = onAccept,
        _onCancel = onCancel,
        super(key: key) {
    _controller = CoordinateValueController();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MapPickerBloc>(
      create: (context) => getIt<MapPickerBloc>(),
      child: AppScaffold(
        bodyColor: Theme.of(context).primaryColor,
        title: BlocBuilder<MapPickerBloc, MapPickerState>(
          buildWhen: (p, c) => p != c,
          builder: (context, state) {
            return state.maybeMap(
              initial: (_) => Text('Loading ..'),
              loadInProgress: (_) => Text('Loading..'),
              floorsLoadSuccess: (_) => Text('Pick a floor'),
              imageLoadSuccess: (_) => Text('Estimated Position'),
              orElse: () => Text(''),
            );
          },
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            MapPickerWrapper(
              projectId: _projectId,
              resultPosition: _positionToShow,
              controller: _controller,
            ),
            MapPickerFixedPositionCard(
              fixedPosition: Offset(_positionToShow.x.getOrCrash(),
                  _positionToShow.y.getOrCrash()),
              cellsIncludingPosition: _cellsIncludingPosition,
              onAccept: (position) => _onAccept(position),
              onCancel: () => _onCancel(),
            ),
          ],
        ),
      ),
    );
  }
}

class MapPicker extends StatelessWidget implements AutoRouteWrapper {
  final UniqueId _projectId;
  final Function(Offset) _onSetPosition;
  final Function _onCancel;
  CoordinateValueController _controller;

  MapPicker({
    Key key,
    @required UniqueId projectId,
    @required Function(Offset) onSetPosition,
    @required Function onCancel,
  })  : assert(projectId != null),
        assert(onSetPosition != null),
        _projectId = projectId,
        _onSetPosition = onSetPosition,
        _onCancel = onCancel,
        super(key: key) {
    _controller = CoordinateValueController();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      bodyColor: Theme.of(context).primaryColor,
      title: BlocBuilder<MapPickerBloc, MapPickerState>(
        buildWhen: (p, c) => p != c,
        builder: (context, state) {
          return state.maybeMap(
            initial: (_) => Text('Loading ..'),
            loadInProgress: (_) => Text('Loading..'),
            floorsLoadSuccess: (_) => Text('Pick a floor'),
            imageLoadSuccess: (_) => Text('Pick a position'),
            orElse: () => Text(''),
          );
        },
      ),
      body: Column(
        children: <Widget>[
          MapPickerWrapper(
            projectId: _projectId,
            controller: _controller,
          ),
          BlocBuilder<MapPickerBloc, MapPickerState>(
            buildWhen: (p, c) => p != c,
            builder: (context, state) {
              return state.maybeMap(
                imageLoadSuccess: (_) => MapPickerChoosePositionCard(
                  controller: _controller,
                  onSetPosition: (position) => _onSetPosition(position),
                  onCancel: () => _onCancel(),
                ),
                orElse: () => Empty(),
              );
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider<MapPickerBloc>(
        create: (context) => getIt<MapPickerBloc>(),
        child: this,
      );
}
