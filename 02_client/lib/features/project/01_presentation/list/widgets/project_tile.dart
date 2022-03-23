import 'package:flutter/material.dart';

import '../../../03_domain/entities/project.dart';


class ProjectTile extends StatelessWidget {
  final Project _project;
  final void Function(Project) _onTap;
  final void Function(Project) _onLongPress;

  const ProjectTile({
    Key key,
    Project project,
    void Function(Project) onTap,
    void Function(Project) onLongPress,
  })  : _project = project,
        _onTap = onTap,
        _onLongPress = onLongPress,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        _project.name.getOrCrash(),
        style: Theme.of(context).textTheme.headline6,
      ),
      subtitle: Text(
        'ID: ${_project.id.getOrCrash()}',
        style: Theme.of(context).textTheme.overline,
      ),
      trailing: Icon(
        Icons.keyboard_arrow_right,
        color: Theme.of(context).primaryColorLight,
      ),
      onTap: () => _onTap(_project),
      onLongPress: () => _onLongPress(_project),
    );
  }
}
