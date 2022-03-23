import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kt_dart/kt.dart';

import '../../../../../common/01_presentation/routes/router.gr.dart';
import '../../../../../common/01_presentation/themes/input_decoration_themes.dart';
import '../../../02_application/form/cell_form_bloc.dart';
import '../misc/build_context_x.dart';
import '../misc/vertices_presentation_class.dart';

class CellVertexTile extends HookWidget {
  final int index;

  CellVertexTile({
    Key key,
    @required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final vertex =
        context.vertices.getOrElse(index, (_) => VertexPrimitive.empty());
    final xPosTextEditingController = useTextEditingController(text: vertex.x);
    final yPosTextEditingController = useTextEditingController(text: vertex.y);
    return Container(
      padding: const EdgeInsets.only(top: 10.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).primaryColorLight,
        ),
      ),
      child: ListTile(
        title: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    child: Text(
                      'VERTEX ${(index + 1).toString()}',
                      style: Theme.of(context).textTheme.overline,
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: Visibility(
                      visible: index > 1,
                      child: GestureDetector(
                        onTap: () {
                          context.vertices =
                              context.vertices.minusElement(vertex);
                          context.bloc<CellFormBloc>().add(
                              CellFormEvent.verticesChanged(context.vertices));
                        },
                        child: Icon(
                          Icons.delete,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: (MediaQuery.of(context).size.width / 5) * 2 - 20,
                    child: TextFormField(
                      controller: xPosTextEditingController,
                      decoration: inputDecorationAccentColorBackground(
                        context: context,
                        labelText: 'X Coordinate',
                      ),
                      keyboardType: TextInputType.numberWithOptions(
                        decimal: true,
                        signed: false,
                      ),
                      onChanged: (value) {
                        final vertices = context.vertices.toMutableList();
                        vertices[index] = vertices[index].copyWith(x: value);
                        context.vertices = vertices.toList();
                        context.bloc<CellFormBloc>().add(
                            CellFormEvent.verticesChanged(context.vertices));
                      },
                      validator: (_) {
                        return context
                            .bloc<CellFormBloc>()
                            .state
                            .cell
                            .vertices
                            .value
                            .fold(
                              (f) => null,
                              (vertices) => vertices[index].x.value.fold(
                                    (f) => f.maybeMap(
                                      empty: (f) => 'Cannot be empty',
                                      numberCannotBeParsed: (f) =>
                                          'Must be a valid double value',
                                      numberOutOfRange: (f) =>
                                          'Value must be between ${f.min} and ${f.max}',
                                      orElse: () => null,
                                    ),
                                    (_) => null,
                                  ),
                            );
                      },
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: (MediaQuery.of(context).size.width / 5) * 2 - 20,
                    child: TextFormField(
                      controller: yPosTextEditingController,
                      decoration: inputDecorationAccentColorBackground(
                        context: context,
                        labelText: 'Y Coordinate',
                      ),
                      keyboardType: TextInputType.numberWithOptions(
                        decimal: true,
                        signed: false,
                      ),
                      onChanged: (value) {
                        final vertices = context.vertices.toMutableList();
                        vertices[index] = vertices[index].copyWith(y: value);
                        context.vertices = vertices.toList();
                        context.bloc<CellFormBloc>().add(
                            CellFormEvent.verticesChanged(context.vertices));
                      },
                      validator: (_) {
                        return context
                            .bloc<CellFormBloc>()
                            .state
                            .cell
                            .vertices
                            .value
                            .fold(
                              (f) => null,
                              (vertices) => vertices[index].y.value.fold(
                                    (f) => f.maybeMap(
                                      empty: (f) => 'Cannot be empty',
                                      numberCannotBeParsed: (f) =>
                                          'Must be a valid double value',
                                      numberOutOfRange: (f) =>
                                          'Value must be between ${f.min} and ${f.max}',
                                      orElse: () => null,
                                    ),
                                    (_) => null,
                                  ),
                            );
                      },
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 5 - 20,
                    child: FlatButton(
                      color: Theme.of(context).primaryColor,
                      onPressed: () => _showMapPicker(context,
                          xPosTextEditingController, yPosTextEditingController),
                      child: Icon(
                        Icons.gps_fixed,
                        color: Theme.of(context).primaryColorLight,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showMapPicker(
      BuildContext context,
      TextEditingController xPosController,
      TextEditingController yPosController) {
    ExtendedNavigator.of(context).push(
      Routes.mapPicker,
      arguments: MapPickerArguments(
        projectId: context.bloc<CellFormBloc>().projectId,
        onSetPosition: (position) {
          final xValue = position.dx.toString();
          final yValue = position.dy.toString();

          final vertices = context.vertices.toMutableList();
          vertices[index] = vertices[index].copyWith(x: xValue, y: yValue);
          context.vertices = vertices.toList();
          context
              .bloc<CellFormBloc>()
              .add(CellFormEvent.verticesChanged(context.vertices));
          xPosController.text = xValue;
          yPosController.text = yValue;

          ExtendedNavigator.of(context).pop();
        },
        onCancel: () => ExtendedNavigator.of(context).pop(),
      ),
    );
  }
}
