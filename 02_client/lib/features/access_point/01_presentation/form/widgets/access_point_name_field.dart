import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../../common/01_presentation/themes/input_decoration_themes.dart';
import '../../../../../common/03_domain/value_objects/value_objects.dart';
import '../../../02_application/form/access_point_form_bloc.dart';

class AccessPointNameField extends HookWidget {
  const AccessPointNameField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocConsumer<AccessPointFormBloc, AccessPointFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditingController.text = state.accessPoint.name.getOrCrash();
      },
      buildWhen: (p, c) => p.accessPoint.name != c.accessPoint.name,
      builder: (context, state) {
        return Container(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              controller: textEditingController,
              decoration: inputDecorationAccentColorBackground(
                context: context,
                labelText: 'Access Point Name',
                counterText:
                    '${textEditingController.text.length}/${Name.maxLength}',
              ),
              maxLength: Name.maxLength,
              maxLengthEnforced: true,
              onChanged: (value) => context
                  .bloc<AccessPointFormBloc>()
                  .add(AccessPointFormEvent.nameChanged(value)),
              validator: (_) => state.accessPoint.name.value.fold(
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
