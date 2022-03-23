import 'package:flutter/material.dart';

import '../../../../../common/01_presentation/widgets/menu_flat_button.dart';
import '../../../03_domain/entities/project.dart';

class ProjectMenuButtons extends StatelessWidget {
  final Project project;
  final Function(bool createNewAccessPoint) onAccessPointsClicked;
  final Function(bool createNewCalibrationPoint) onCalibrationPointsClicked;
  final Function(bool createNewFingerprint) onFingerprintsClicked;
  final Function(bool createNewCell) onCellsClicked;

  const ProjectMenuButtons({
    Key key,
    @required this.project,
    @required this.onAccessPointsClicked,
    @required this.onCalibrationPointsClicked,
    @required this.onFingerprintsClicked,
    @required this.onCellsClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool hasAccessPoints =
        project.registeredAccessPoints.getOrCrash() > 0;
    final bool hasCalibrationPoints =
        project.registeredCalibrationPoints.getOrCrash() > 0;
    final bool hasFingerprints =
        project.registeredFingerprints.getOrCrash() > 0;
    final bool hasCells = project.registeredCells.getOrCrash() > 0;

    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MenuFlatButton(
              onPressed: () => onAccessPointsClicked(
                !hasAccessPoints,
              ),
              buttonText:
                  hasAccessPoints ? 'SHOW ACCESS POINTS' : 'ADD ACCESS POINT',
              buttonIcon: Icons.leak_add,
            ),
            MenuFlatButton(
              onPressed: () => onCalibrationPointsClicked(
                !hasCalibrationPoints,
              ),
              buttonText: hasCalibrationPoints
                  ? 'SHOW CALIBRATION POINTS'
                  : 'ADD CALIBRATION POINT',
              buttonIcon: Icons.location_on,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MenuFlatButton(
              onPressed: project.registeredCalibrationPoints.getOrCrash() > 1
                  ? () => onFingerprintsClicked(
                        !hasFingerprints,
                      )
                  : null,
              buttonText: 'ADD NEW FINGERPRINT',
              buttonIcon: Icons.fingerprint,
            ),
            MenuFlatButton(
              onPressed: () => onCellsClicked(
                !hasCells,
              ),
              buttonText: hasCells ? 'SHOW CELLS' : 'ADD CELL',
              buttonIcon: Icons.format_shapes,
            ),
          ],
        ),
      ],
    );
  }
}
