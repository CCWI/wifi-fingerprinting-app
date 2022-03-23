import 'package:flutter/material.dart';
import 'package:kt_dart/kt.dart';

import '../../../../../common/01_presentation/widgets/centered_info_screen.dart';
import '../../../03_domain/entities/project.dart';
import 'project_error_tile.dart';
import 'project_tile.dart';

class ProjectList extends StatelessWidget {
  final KtList<Project> projects;
  final void Function(Project) _onTap;
  final void Function(Project) _onLongPress;

  const ProjectList({
    @required this.projects,
    @required void Function(Project) onTap,
    @required void Function(Project) onLongPress,
  })  : _onTap = onTap,
        _onLongPress = onLongPress;

  @override
  Widget build(BuildContext context) {
    if (projects.isEmpty()) {
      return CenteredInfoScreen(
        icon: Icon(
          Icons.sentiment_dissatisfied,
          color: Colors.white,
        ),
        text: Text('NO PROJECTS AVAILABLE',
            style: Theme.of(context).textTheme.overline),
        subText:
            Text('ADD A NEW ONE', style: Theme.of(context).textTheme.overline),
      );
    } else {
      return ListView.separated(
        itemCount: projects.size,
        itemBuilder: (context, index) {
          final project = projects[index];
          if (project.failureOption.isSome()) {
            return ProjectErrorTile(project: project);
          }
          return ProjectTile(
            project: project,
            onTap: _onTap,
            onLongPress: _onLongPress,
          );
        },
        separatorBuilder: (context, _) => Divider(
          color: Theme.of(context).primaryColorLight,
        ),
      );
    }
  }
}
