// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';

// import '../../../../../common/01_presentation/themes/input_decoration_themes.dart';
// import '../../../02_application/form/cell_form_bloc.dart';


// class CellCoordinatesRow extends HookWidget {
//   const CellCoordinatesRow({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final xPosTextEditingController = useTextEditingController();
//     final yPosTextEditingController = useTextEditingController();

//     return BlocConsumer<CellFormBloc, CellFormState>(
//       listenWhen: (p, c) => p.isEditing != c.isEditing,
//       listener: (context, state) {
//         xPosTextEditingController.text =
//             state.cell.vertices.getOrCrash()[0].x.getOrCrash().toString();
//         yPosTextEditingController.text =
//             state.cell.vertices.getOrCrash()[0].y.getOrCrash().toString();
//       },
//       buildWhen: (p, c) =>
//           p.cell.vertices.getOrCrash()[0].x != c.cell.vertices.getOrCrash()[0].x ||
//           p.cell.vertices.getOrCrash()[0].y != c.cell.vertices.getOrCrash()[0].y,
//       builder: (context, state) {
//         return Container(
//           child: Padding(
//             padding: const EdgeInsets.all(10),
//             child: Row(
//               children: <Widget>[
//                 Container(
//                   width: MediaQuery.of(context).size.width / 2 - 20,
//                   child: TextFormField(
//                     controller: xPosTextEditingController,
//                     decoration: inputDecorationAccentColorBackground(
//                       context: context,
//                       labelText: 'X Coordinate',
//                     ),
//                     keyboardType: TextInputType.numberWithOptions(
//                       decimal: true,
//                       signed: false,
//                     ),
//                     onChanged: (value) => context
//                         .bloc<CellFormBloc>()
//                         .add(CellFormEvent.xPosChanged(value)),
//                     validator: (_) => state.cell.vertices.getOrCrash()[0].x.value.fold(
//                       (f) => f.maybeMap(
//                         empty: (f) => 'Cannot be empty',
//                         negativeNumber: (f) => 'Value must not be negative',
//                         numberCannotBeParsed: (f) =>
//                             'Value must be a valid double',
//                         orElse: () => null,
//                       ),
//                       (_) => null,
//                     ),
//                   ),
//                 ),
//                 Spacer(),
//                 Container(
//                   width: MediaQuery.of(context).size.width / 2 - 20,
//                   child: TextFormField(
//                     controller: yPosTextEditingController,
//                     decoration: inputDecorationAccentColorBackground(
//                       context: context,
//                       labelText: 'Y Coordinate',
//                     ),
//                     keyboardType: TextInputType.numberWithOptions(
//                       decimal: true,
//                       signed: false,
//                     ),
//                     onChanged: (value) => context
//                         .bloc<CellFormBloc>()
//                         .add(CellFormEvent.yPosChanged(value)),
//                     validator: (_) => state.cell.vertices.getOrCrash()[0].y.value.fold(
//                       (f) => f.maybeMap(
//                         empty: (f) => 'Cannot be empty',
//                         negativeNumber: (f) => 'Value must not be negative',
//                         numberCannotBeParsed: (f) =>
//                             'Value must be a valid double',
//                         orElse: () => null,
//                       ),
//                       (_) => null,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
