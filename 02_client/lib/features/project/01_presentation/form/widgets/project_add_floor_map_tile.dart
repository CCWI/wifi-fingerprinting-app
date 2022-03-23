import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';

import '../../../02_application/form/project_form_bloc.dart';
import '../misc/build_context_x.dart';
import '../misc/floors_presentation_class.dart';

class ProjectAddFloorMapTile extends StatelessWidget {
  const ProjectAddFloorMapTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectFormBloc, ProjectFormState>(
      buildWhen: (p, c) => p.project.floors.isFull != c.project.floors.isFull,
      builder: (context, state) {
        return ListTile(
          enabled: !state.project.floors.isFull,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.add,
                color: Theme.of(context).primaryColorLight,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                'ADD A FLOOR',
                style: TextStyle(
                  color: Theme.of(context).primaryColorLight,
                ),
              ),
            ],
          ),
          onTap: () {
            context.floors =
                context.floors.plusElement(FloorMapPrimitive.empty());
            context
                .bloc<ProjectFormBloc>()
                .add(ProjectFormEvent.floorsChanged(context.floors));
          },
        );
      },
    );
  }
}
