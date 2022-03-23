import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../../common/01_presentation/routes/router.gr.dart';
import '../../../../../common/01_presentation/themes/input_decoration_themes.dart';
import '../../../02_application/form/calibration_point_form_bloc.dart';

class CalibrationPointCoordinatesRow extends HookWidget {
  const CalibrationPointCoordinatesRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final xPosTextEditingController = useTextEditingController();
    final yPosTextEditingController = useTextEditingController();

    return BlocConsumer<CalibrationPointFormBloc, CalibrationPointFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        xPosTextEditingController.text =
            state.calibrationPoint.position.x.getOrCrash().toString();
        yPosTextEditingController.text =
            state.calibrationPoint.position.y.getOrCrash().toString();
      },
      buildWhen: (p, c) =>
          p.calibrationPoint.position.x != c.calibrationPoint.position.x ||
          p.calibrationPoint.position.y != c.calibrationPoint.position.y,
      builder: (context, state) {
        return Container(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                Container(
                  width: (MediaQuery.of(context).size.width / 5) * 2 - 10,
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
                    onChanged: (value) => context
                        .bloc<CalibrationPointFormBloc>()
                        .add(CalibrationPointFormEvent.xPosChanged(value)),
                    validator: (_) =>
                        state.calibrationPoint.position.x.value.fold(
                      (f) => f.maybeMap(
                        empty: (f) => 'Cannot be empty',
                        negativeNumber: (f) => 'Value must not be negative',
                        numberCannotBeParsed: (f) =>
                            'Value must be a valid double',
                        numberOutOfRange: (f) =>
                            'Value must be between ${f.min} and ${f.max}',
                        orElse: () => null,
                      ),
                      (_) => null,
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  width: (MediaQuery.of(context).size.width / 5) * 2 - 10,
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
                    onChanged: (value) => context
                        .bloc<CalibrationPointFormBloc>()
                        .add(CalibrationPointFormEvent.yPosChanged(value)),
                    validator: (_) =>
                        state.calibrationPoint.position.y.value.fold(
                      (f) => f.maybeMap(
                        empty: (f) => 'Cannot be empty',
                        negativeNumber: (f) => 'Value must not be negative',
                        numberCannotBeParsed: (f) =>
                            'Value must be a valid double',
                        numberOutOfRange: (f) =>
                            'Value must be between ${f.min} and ${f.max}',
                        orElse: () => null,
                      ),
                      (_) => null,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 5 - 10,
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
          ),
        );
      },
    );
  }

  void _showMapPicker(
      BuildContext context,
      TextEditingController xPosController,
      TextEditingController yPosController) {
    ExtendedNavigator.of(context).push(
      Routes.mapPicker,
      arguments: MapPickerArguments(
        projectId: context.bloc<CalibrationPointFormBloc>().projectId,
        onSetPosition: (position) {
          final xValue = position.dx.toString();
          final yValue = position.dy.toString();

          xPosController.text = xValue;
          yPosController.text = yValue;

          context.bloc<CalibrationPointFormBloc>()
            ..add(CalibrationPointFormEvent.xPosChanged(xValue))
            ..add(CalibrationPointFormEvent.yPosChanged(yValue));

          ExtendedNavigator.of(context).pop();
        },
        onCancel: () => ExtendedNavigator.of(context).pop(),
      ),
    );
  }
}
