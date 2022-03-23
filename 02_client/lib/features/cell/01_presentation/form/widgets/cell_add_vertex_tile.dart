import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';

import '../../../02_application/form/cell_form_bloc.dart';
import '../misc/build_context_x.dart';
import '../misc/vertices_presentation_class.dart';

class CellAddVertexTile extends StatelessWidget {
  const CellAddVertexTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CellFormBloc, CellFormState>(
      buildWhen: (p, c) => p.cell.vertices.isFull != c.cell.vertices.isFull,
      builder: (context, state) {
        return ListTile(
          enabled: !state.cell.vertices.isFull,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.format_shapes,
                color: Theme.of(context).primaryColorLight,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                'ADD A VERTEX',
                style: TextStyle(
                  color: Theme.of(context).primaryColorLight,
                ),
              ),
            ],
          ),
          onTap: () {
            context.vertices =
                context.vertices.plusElement(VertexPrimitive.empty());
            context
                .bloc<CellFormBloc>()
                .add(CellFormEvent.verticesChanged(context.vertices));
          },
        );
      },
    );
  }
}
