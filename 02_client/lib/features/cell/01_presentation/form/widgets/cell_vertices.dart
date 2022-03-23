import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:provider/provider.dart';

import '../../../02_application/form/cell_form_bloc.dart';
import '../misc/build_context_x.dart';
import '../misc/vertices_presentation_class.dart';
import 'cell_vertex_tile.dart';

class CellVertices extends StatelessWidget {
  const CellVertices({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<CellFormBloc, CellFormState>(
          listenWhen: (p, c) => p.isEditing != c.isEditing,
          listener: (context, state) {
            context.vertices = state.cell.vertices.value.fold(
              (_) => mutableListOf<VertexPrimitive>(),
              (vertices) => vertices
                  .map((_) => VertexPrimitive.fromDomain(_))
                  .toMutableList(),
            );
          },
        ),
        BlocListener<CellFormBloc, CellFormState>(
          listenWhen: (p, c) =>
              (p.isInitial != c.isInitial) && (p.isEditing == c.isEditing),
          listener: (context, state) {
            context.vertices = context.vertices
                .plusElement(VertexPrimitive.empty())
                .plusElement(VertexPrimitive.empty());
            context
                .bloc<CellFormBloc>()
                .add(CellFormEvent.verticesChanged(context.vertices));
          },
        ),
        BlocListener<CellFormBloc, CellFormState>(
          listenWhen: (p, c) =>
              p.cell.vertices.length != 0 &&
              p.cell.vertices.isFull != c.cell.vertices.isFull,
          listener: (context, state) {
            if (state.cell.vertices.isFull) {
              FlushbarHelper.createInformation(
                message: 'Cannot add more than 4 vertices to cell',
                duration: const Duration(
                  seconds: 2,
                ),
              ).show(context);
            }
          },
        ),
      ],
      child: Consumer<Vertices>(
        builder: (context, vertices, child) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                if (index.isOdd) {
                  return SizedBox(height: 15);
                }
                return CellVertexTile(index: index ~/ 2);
              },
              childCount: vertices.value.size * 2 - 1,
            ),
          );
        },
      ),
    );
  }
}
