import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../../common/01_presentation/themes/input_decoration_themes.dart';
import '../../../02_application/form/project_form_bloc.dart';

class ProjectMaxCoordinatesRow extends HookWidget {
  const ProjectMaxCoordinatesRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final xLengthTextEditingController = useTextEditingController();
    final yLengthTextEditingController = useTextEditingController();

    return BlocConsumer<ProjectFormBloc, ProjectFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        xLengthTextEditingController.text =
            state.project.xLength.getOrCrash().toString();
        yLengthTextEditingController.text =
            state.project.yLength.getOrCrash().toString();
      },
      buildWhen: (p, c) =>
          p.project.xLength != c.project.xLength ||
          p.project.yLength != c.project.yLength,
      builder: (context, state) {
        return Container(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width / 2 - 20,
                  child: TextFormField(
                    controller: xLengthTextEditingController,
                    decoration: inputDecorationAccentColorBackground(
                      context: context,
                      labelText: 'Max X Coordinate',
                    ),
                    keyboardType: TextInputType.numberWithOptions(
                      decimal: true,
                      signed: false,
                    ),
                    onChanged: (value) => context
                        .bloc<ProjectFormBloc>()
                        .add(ProjectFormEvent.xLengthChanged(value)),
                    validator: (_) => state.project.xLength.value.fold(
                      (f) => f.maybeMap(
                        empty: (f) => 'Cannot be empty',
                        negativeNumber: (f) => 'Value must not be negative',
                        numberCannotBeParsed: (f) =>
                            'Value must be a valid double',
                        orElse: () => null,
                      ),
                      (_) => null,
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  width: MediaQuery.of(context).size.width / 2 - 20,
                  child: TextFormField(
                    controller: yLengthTextEditingController,
                    decoration: inputDecorationAccentColorBackground(
                      context: context,
                      labelText: 'Max Y Coordinate',
                    ),
                    keyboardType: TextInputType.numberWithOptions(
                      decimal: true,
                      signed: false,
                    ),
                    onChanged: (value) => context
                        .bloc<ProjectFormBloc>()
                        .add(ProjectFormEvent.yLengthChanged(value)),
                    validator: (_) => state.project.yLength.value.fold(
                      (f) => f.maybeMap(
                        empty: (f) => 'Cannot be empty',
                        negativeNumber: (f) => 'Value must not be negative',
                        numberCannotBeParsed: (f) =>
                            'Value must be a valid double',
                        orElse: () => null,
                      ),
                      (_) => null,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
