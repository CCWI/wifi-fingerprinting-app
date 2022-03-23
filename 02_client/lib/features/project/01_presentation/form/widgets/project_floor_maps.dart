import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:provider/provider.dart';

import '../../../02_application/form/project_form_bloc.dart';
import '../misc/build_context_x.dart';
import '../misc/floors_presentation_class.dart';
import 'project_floor_map_tile.dart';

class ProjectFloorMaps extends StatelessWidget {
  const ProjectFloorMaps({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<ProjectFormBloc, ProjectFormState>(
          listenWhen: (p, c) => p.isEditing != c.isEditing,
          listener: (context, state) {
            context.floors = state.project.floors.value.fold(
              (_) => mutableListOf<FloorMapPrimitive>(),
              (floorMaps) => floorMaps
                  .map((_) => FloorMapPrimitive.fromDomain(_))
                  .toMutableList(),
            );
          },
        ),
        BlocListener<ProjectFormBloc, ProjectFormState>(
          listenWhen: (p, c) =>
              (p.isInitial != c.isInitial) && (p.isEditing == c.isEditing),
          listener: (context, state) {
            context.floors = context.floors
                .plusElement(FloorMapPrimitive.empty());
            context
                .bloc<ProjectFormBloc>()
                .add(ProjectFormEvent.floorsChanged(context.floors));
          },
        ),
        BlocListener<ProjectFormBloc, ProjectFormState>(
          listenWhen: (p, c) =>
              p.project.floors.length != 0 &&
              p.project.floors.isFull != c.project.floors.isFull,
          listener: (context, state) {
            if (state.project.floors.isFull) {
              FlushbarHelper.createInformation(
                message: 'Cannot add more than 25 floors to project',
                duration: const Duration(
                  seconds: 3,
                ),
              ).show(context);
            }
          },
        ),
      ],
      child: Consumer<Floors>(
        builder: (context, floors, child) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                if (index.isOdd) {
                  return SizedBox(height: 15); 
                }
                return ProjectFloorMapTile(index: index ~/ 2);
              },
              childCount: floors.value.size * 2 - 1,
            ),
          );
        },
      ),
    );
  }
}
