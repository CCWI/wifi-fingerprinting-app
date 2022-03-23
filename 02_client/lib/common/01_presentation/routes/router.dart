import 'package:auto_route/auto_route_annotations.dart';

import '../../../features/access_point/01_presentation/form/access_point_form.dart';
import '../../../features/access_point/01_presentation/form/access_point_select_network.dart';
import '../../../features/access_point/01_presentation/list/access_points.dart';
import '../../../features/calibration_fingerprint/01_presentation/form/calibration_fingerprint_form.dart';
import '../../../features/calibration_fingerprint/01_presentation/list/calibration_fingerprints.dart';
import '../../../features/calibration_point/01_presentation/form/calibration_point_form.dart';
import '../../../features/calibration_point/01_presentation/list/calibrationpoints.dart';
import '../../../features/cell/01_presentation/form/cell_form.dart';
import '../../../features/cell/01_presentation/list/cells.dart';
import '../../../features/fingerprint/01_presentation/form/fingerprint_form.dart';
import '../../../features/project/01_presentation/form/project_form.dart';
import '../../../features/project/01_presentation/list/projects.dart';
import '../../../features/project/01_presentation/menu/project_menu.dart';
import '../pages/landing/landing.dart';
import '../pages/map_picker/map_picker.dart';
import '../pages/networks/networks.dart';
import '../pages/settings/settings.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  //initials
  MaterialRoute(page: Landing, initial: true),
  MaterialRoute(page: Networks),
  //lists
  MaterialRoute(page: Projects),
  MaterialRoute(page: AccessPoints),
  MaterialRoute(page: CalibrationPoints),
  MaterialRoute(page: CalibrationFingerprints),
  MaterialRoute(page: Cells),
  //forms
  MaterialRoute(page: ProjectForm),
  MaterialRoute(page: AccessPointForm),
  MaterialRoute(page: CalibrationFingerprintForm),
  MaterialRoute(page: CalibrationPointForm),
  MaterialRoute(page: FingerprintForm),
  MaterialRoute(page: CellForm),
  //misc
  MaterialRoute(page: ProjectMenu),
  MaterialRoute(page: AccessPointSelectNetwork),
  MaterialRoute(page: MapPicker),
  MaterialRoute(page: Settings),
])
class $Router {}
