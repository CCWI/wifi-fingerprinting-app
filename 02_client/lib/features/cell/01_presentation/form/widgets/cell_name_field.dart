import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../../common/01_presentation/themes/input_decoration_themes.dart';
import '../../../../../common/03_domain/value_objects/value_objects.dart';
import '../../../02_application/form/cell_form_bloc.dart';

class CellNameField extends HookWidget {
  const CellNameField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocConsumer<CellFormBloc, CellFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditingController.text = state.cell.name.getOrCrash();
      },
      buildWhen: (p, c) => p.cell.name != c.cell.name,
      builder: (context, state) {
        return Container(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(       
              controller: textEditingController,
              decoration: inputDecorationAccentColorBackground(
                context: context,
                labelText: 'Cell Name',
                counterText: '${textEditingController.text.length}/${Name.maxLength}',
              ),
              maxLength: Name.maxLength,
              maxLengthEnforced: true,
              onChanged: (value) => context
                  .bloc<CellFormBloc>()
                  .add(CellFormEvent.nameChanged(value)),
              validator: (_) => state.cell.name.value.fold(
                (f) => f.maybeMap(
                  empty: (f) => 'Name cannot be empty',
                  exceedingLength: (f) =>
                      'Exceeding length, max. characters: ${f.max}',
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
