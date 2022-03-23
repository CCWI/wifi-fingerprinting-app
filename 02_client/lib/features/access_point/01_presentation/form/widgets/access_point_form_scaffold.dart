import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../common/01_presentation/widgets/app_scaffold.dart';
import '../../../../../common/01_presentation/widgets/delete_alert_dialog.dart';
import '../../../../../common/03_domain/value_objects/value_objects.dart';
import '../../../02_application/form/access_point_form_bloc.dart';
import 'access_point_name_field.dart';

class AccessPointFormScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      bodyColor: Theme.of(context).accentColor,
      title: BlocBuilder<AccessPointFormBloc, AccessPointFormState>(
        buildWhen: (p, c) => p.isEditing != c.isEditing,
        builder: (context, state) => Text(state.isEditing
            ? 'Edit \'${state.accessPoint.name.getOrCrash()}\''
            : 'New Access Point'),
      ),
      actions: <Widget>[
        BlocBuilder<AccessPointFormBloc, AccessPointFormState>(
          buildWhen: (p, c) => p.isEditing != c.isEditing,
          builder: (context, state) {
            return Visibility(
              visible: state.isEditing,
              child: IconButton(
                icon: Icon(Icons.delete_forever),
                onPressed: () => showDialog(
                  context: context,
                  builder: (_) => DeleteAlertDialog(
                    title: 'Delete Access Point?',
                    content:
                        'Do you really want to delete ${state.accessPoint.name.getOrCrash()} ?',
                    withInput: true,
                    textToMatch: 'Delete',
                    deleteCall: () =>
                        onDeleteAccessPoint(context, state.accessPoint.id),
                  ),
                ),
              ),
            );
          },
        ),
        BlocBuilder<AccessPointFormBloc, AccessPointFormState>(
          buildWhen: (p, c) => p.isEditing != c.isEditing,
          builder: (context, state) {
            return Visibility(
              child: IconButton(
                icon: Icon(Icons.save),
                onPressed: () => onSaveAccessPoint(context),
              ),
            );
          },
        ),
      ],
      body: BlocBuilder<AccessPointFormBloc, AccessPointFormState>(
        buildWhen: (p, c) => p.showErrorMessages != c.showErrorMessages,
        builder: (context, state) {
          return Form(
            autovalidate: state.showErrorMessages,
            child: const CustomScrollView(
              slivers: <Widget>[
                SliverToBoxAdapter(child: AccessPointNameField()),
              ],
            ),
          );
        },
      ),
    );
  }

  void onDeleteAccessPoint(BuildContext context, UniqueId id) {
    final accessPointFormBloc = context.bloc<AccessPointFormBloc>();
    accessPointFormBloc.add(AccessPointFormEvent.deleted(id));
  }

  void onSaveAccessPoint(BuildContext context) {
    final accessPointFormBloc = context.bloc<AccessPointFormBloc>();
    accessPointFormBloc.add(const AccessPointFormEvent.saved());
  }
}
