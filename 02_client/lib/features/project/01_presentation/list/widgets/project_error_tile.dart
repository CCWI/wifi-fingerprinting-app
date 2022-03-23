import 'package:flutter/material.dart';

import '../../../03_domain/entities/project.dart';


class ProjectErrorTile extends StatelessWidget {
  final Project _project;

  const ProjectErrorTile({
    Key key,
    Project project,
  })  : _project = project,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Invalid project',
        style: Theme.of(context).textTheme.subtitle1.copyWith(
              color: Theme.of(context).errorColor,
            ),
      ),
      subtitle: Text(
        'Reason: ${_project.failureOption.fold(() => '', (f) => f.toString())}',
        style: Theme.of(context).textTheme.overline,
      ),
      trailing: Icon(
        Icons.error,
        color: Theme.of(context).errorColor,
      ),
    );
  }
}
