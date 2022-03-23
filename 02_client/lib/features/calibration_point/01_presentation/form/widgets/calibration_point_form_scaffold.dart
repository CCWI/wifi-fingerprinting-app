import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../common/01_presentation/widgets/app_scaffold.dart';
import '../../../../../common/01_presentation/widgets/delete_alert_dialog.dart';
import '../../../../../common/03_domain/value_objects/value_objects.dart';
import '../../../02_application/form/calibration_point_form_bloc.dart';
import 'calibration_point_coordinates_row.dart';
import 'calibration_point_floor_field.dart';
import 'calibration_point_name_field.dart';

class CalibrationPointFormScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      bodyColor: Theme.of(context).accentColor,
      title: BlocBuilder<CalibrationPointFormBloc, CalibrationPointFormState>(
        buildWhen: (p, c) => p.isEditing != c.isEditing,
        builder: (context, state) => Text(state.isEditing
            ? 'Edit \'${state.calibrationPoint.name.getOrCrash()}\''
            : 'New Calibration Point'),
      ),
      actions: <Widget>[
        BlocBuilder<CalibrationPointFormBloc, CalibrationPointFormState>(
          buildWhen: (p, c) => p.isEditing != c.isEditing,
          builder: (context, state) {
            return Visibility(
              visible: state.isEditing,
              child: IconButton(
                icon: Icon(Icons.delete_forever),
                onPressed: () => showDialog(
                  context: context,
                  builder: (_) => DeleteAlertDialog(
                    title: 'Delete Calibration Point?',
                    content:
                        'Do you really want to delete ${state.calibrationPoint.name.getOrCrash()} ?',
                    withInput: true,
                    textToMatch: 'Delete',
                    deleteCall: () =>
                        onDeleteCalibrationPoint(context, state.calibrationPoint.id),
                  ),
                ),
              ),
            );
          },
        ),
        BlocBuilder<CalibrationPointFormBloc, CalibrationPointFormState>(
          buildWhen: (p, c) => p.isEditing != c.isEditing,
          builder: (context, state) {
            return Visibility(
              child: IconButton(
                icon: Icon(Icons.save),
                onPressed: () => onSaveCalibrationPoint(context),
              ),
            );
          },
        ),
      ],
      body: BlocBuilder<CalibrationPointFormBloc, CalibrationPointFormState>(
        buildWhen: (p, c) => p.showErrorMessages != c.showErrorMessages,
        builder: (context, state) {
          return Form(
            autovalidate: state.showErrorMessages,
            child: const CustomScrollView(
              slivers: <Widget>[
                SliverToBoxAdapter(child: CalibrationPointNameField()),
                SliverToBoxAdapter(child: CalibrationPointCoordinatesRow()),
                SliverToBoxAdapter(child: CalibrationPointFloorField()),
              ],
            ),
          );
        },
      ),
    );
  }

  void onDeleteCalibrationPoint(BuildContext context, UniqueId id) {
    final calibrationPointFormBloc = context.bloc<CalibrationPointFormBloc>();
    calibrationPointFormBloc.add(CalibrationPointFormEvent.deleted(id));
  }

  void onSaveCalibrationPoint(BuildContext context) {
    final calibrationPointFormBloc = context.bloc<CalibrationPointFormBloc>();
    calibrationPointFormBloc.add(const CalibrationPointFormEvent.saved());
  }
}
