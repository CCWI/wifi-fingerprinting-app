import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../../common/01_presentation/themes/input_decoration_themes.dart';
import '../../../02_application/form/calibration_point_form_bloc.dart';

class CalibrationPointFloorField extends HookWidget {
  const CalibrationPointFloorField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final floorTextEditingController = useTextEditingController();

    return BlocConsumer<CalibrationPointFormBloc, CalibrationPointFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        floorTextEditingController.text =
            state.calibrationPoint.position.floor.getOrCrash().toString();
      },
      buildWhen: (p, c) =>
          p.calibrationPoint.position.floor != c.calibrationPoint.position.floor,
      builder: (context, state) {
        return Container(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              controller: floorTextEditingController,
              decoration: inputDecorationAccentColorBackground(
                context: context,
                labelText: 'Floor',
              ),
              keyboardType: TextInputType.numberWithOptions(
                decimal: false,
                signed: false,
              ),
              maxLength: 2,
              maxLengthEnforced: true,
              onChanged: (value) => context
                  .bloc<CalibrationPointFormBloc>()
                  .add(CalibrationPointFormEvent.floorChanged(value)),
              validator: (_) => state.calibrationPoint.position.floor.value.fold(
                (f) => f.maybeMap(
                  empty: (f) => 'Cannot be empty',
                  numberCannotBeParsed: (f) => 'Must be a valid integer',
                  orElse: () => null,
                ),
                (_) => null,
              ),
            ),
          ),
        );
      },
    );
  }
}
