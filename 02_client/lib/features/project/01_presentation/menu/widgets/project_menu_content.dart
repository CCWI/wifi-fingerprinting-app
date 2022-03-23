import 'package:flutter/material.dart';

import '../../../03_domain/entities/project.dart';
import 'project_menu_buttons.dart';
import 'project_menu_dash.dart';

class ProjectMenuContent extends StatelessWidget {
  final Project project;
  final Function(bool createNewAccessPoint) onAccessPointsClicked;
  final Function(bool createNewCalibrationPoint) onCalibrationPointsClicked;
  final Function(bool createNewFingerprint) onFingerprintsClicked;
  final Function(bool createNewCell) onCellsClicked;

  ProjectMenuContent(
      {@required this.project,
      @required this.onAccessPointsClicked,
      @required this.onCalibrationPointsClicked,
      @required this.onFingerprintsClicked,
      @required this.onCellsClicked});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          ProjectMenuDash(
            registeredAccessPoints: project.registeredAccessPoints.getOrCrash(),
            registeredCalibrationPoints:
                project.registeredCalibrationPoints.getOrCrash(),
            registeredCalibrationFingerprints:
                project.registeredCalibrationFingerprints.getOrCrash(),
            registeredFingerprints: project.registeredFingerprints.getOrCrash(),
            registeredCells: project.registeredCells.getOrCrash(),
          ),
          Spacer(),
          ProjectMenuButtons(
            project: project,
            onAccessPointsClicked: onAccessPointsClicked,
            onCalibrationPointsClicked: onCalibrationPointsClicked,
            onFingerprintsClicked: onFingerprintsClicked,
            onCellsClicked: onCellsClicked,
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
