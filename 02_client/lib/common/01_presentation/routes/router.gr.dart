// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../features/access_point/01_presentation/form/access_point_form.dart';
import '../../../features/access_point/01_presentation/form/access_point_select_network.dart';
import '../../../features/access_point/01_presentation/list/access_points.dart';
import '../../../features/access_point/03_domain/entities/access_point.dart';
import '../../../features/calibration_fingerprint/01_presentation/form/calibration_fingerprint_form.dart';
import '../../../features/calibration_fingerprint/01_presentation/list/calibration_fingerprints.dart';
import '../../../features/calibration_point/01_presentation/form/calibration_point_form.dart';
import '../../../features/calibration_point/01_presentation/list/calibrationpoints.dart';
import '../../../features/calibration_point/03_domain/entities/calibration_point.dart';
import '../../../features/cell/01_presentation/form/cell_form.dart';
import '../../../features/cell/01_presentation/list/cells.dart';
import '../../../features/cell/03_domain/entities/cell.dart';
import '../../../features/fingerprint/01_presentation/form/fingerprint_form.dart';
import '../../../features/project/01_presentation/form/project_form.dart';
import '../../../features/project/01_presentation/list/projects.dart';
import '../../../features/project/01_presentation/menu/project_menu.dart';
import '../../../features/project/03_domain/entities/project.dart';
import '../../03_domain/value_objects/value_objects.dart';
import '../pages/landing/landing.dart';
import '../pages/map_picker/map_picker.dart';
import '../pages/networks/networks.dart';
import '../pages/settings/settings.dart';

class Routes {
  static const String landing = '/';
  static const String networks = '/Networks';
  static const String projects = '/Projects';
  static const String accessPoints = '/access-points';
  static const String calibrationPoints = '/calibration-points';
  static const String calibrationFingerprints = '/calibration-fingerprints';
  static const String cells = '/Cells';
  static const String projectForm = '/project-form';
  static const String accessPointForm = '/access-point-form';
  static const String calibrationFingerprintForm =
      '/calibration-fingerprint-form';
  static const String calibrationPointForm = '/calibration-point-form';
  static const String fingerprintForm = '/fingerprint-form';
  static const String cellForm = '/cell-form';
  static const String projectMenu = '/project-menu';
  static const String accessPointSelectNetwork = '/access-point-select-network';
  static const String mapPicker = '/map-picker';
  static const String settings = '/Settings';
  static const all = <String>{
    landing,
    networks,
    projects,
    accessPoints,
    calibrationPoints,
    calibrationFingerprints,
    cells,
    projectForm,
    accessPointForm,
    calibrationFingerprintForm,
    calibrationPointForm,
    fingerprintForm,
    cellForm,
    projectMenu,
    accessPointSelectNetwork,
    mapPicker,
    settings,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.landing, page: Landing),
    RouteDef(Routes.networks, page: Networks),
    RouteDef(Routes.projects, page: Projects),
    RouteDef(Routes.accessPoints, page: AccessPoints),
    RouteDef(Routes.calibrationPoints, page: CalibrationPoints),
    RouteDef(Routes.calibrationFingerprints, page: CalibrationFingerprints),
    RouteDef(Routes.cells, page: Cells),
    RouteDef(Routes.projectForm, page: ProjectForm),
    RouteDef(Routes.accessPointForm, page: AccessPointForm),
    RouteDef(Routes.calibrationFingerprintForm,
        page: CalibrationFingerprintForm),
    RouteDef(Routes.calibrationPointForm, page: CalibrationPointForm),
    RouteDef(Routes.fingerprintForm, page: FingerprintForm),
    RouteDef(Routes.cellForm, page: CellForm),
    RouteDef(Routes.projectMenu, page: ProjectMenu),
    RouteDef(Routes.accessPointSelectNetwork, page: AccessPointSelectNetwork),
    RouteDef(Routes.mapPicker, page: MapPicker),
    RouteDef(Routes.settings, page: Settings),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    Landing: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => Landing(),
        settings: data,
      );
    },
    Networks: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => Networks().wrappedRoute(context),
        settings: data,
      );
    },
    Projects: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => Projects().wrappedRoute(context),
        settings: data,
      );
    },
    AccessPoints: (data) {
      final args = data.getArgs<AccessPointsArguments>(
        orElse: () => AccessPointsArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => AccessPoints(
          key: args.key,
          projectId: args.projectId,
        ).wrappedRoute(context),
        settings: data,
      );
    },
    CalibrationPoints: (data) {
      final args = data.getArgs<CalibrationPointsArguments>(
        orElse: () => CalibrationPointsArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => CalibrationPoints(
          key: args.key,
          projectId: args.projectId,
        ).wrappedRoute(context),
        settings: data,
      );
    },
    CalibrationFingerprints: (data) {
      final args = data.getArgs<CalibrationFingerprintsArguments>(
        orElse: () => CalibrationFingerprintsArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => CalibrationFingerprints(
          key: args.key,
          projectId: args.projectId,
          calibrationPointId: args.calibrationPointId,
        ).wrappedRoute(context),
        settings: data,
      );
    },
    Cells: (data) {
      final args = data.getArgs<CellsArguments>(
        orElse: () => CellsArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => Cells(
          key: args.key,
          projectId: args.projectId,
        ).wrappedRoute(context),
        settings: data,
      );
    },
    ProjectForm: (data) {
      final args = data.getArgs<ProjectFormArguments>(
        orElse: () => ProjectFormArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => ProjectForm(
          key: args.key,
          editedProject: args.editedProject,
        ).wrappedRoute(context),
        settings: data,
      );
    },
    AccessPointForm: (data) {
      final args = data.getArgs<AccessPointFormArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => AccessPointForm(
          key: args.key,
          editedAccessPoint: args.editedAccessPoint,
          projectId: args.projectId,
        ).wrappedRoute(context),
        settings: data,
      );
    },
    CalibrationFingerprintForm: (data) {
      final args = data.getArgs<CalibrationFingerprintFormArguments>(
        orElse: () => CalibrationFingerprintFormArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => CalibrationFingerprintForm(
          key: args.key,
          calibrationPointId: args.calibrationPointId,
          projectId: args.projectId,
        ).wrappedRoute(context),
        settings: data,
      );
    },
    CalibrationPointForm: (data) {
      final args = data.getArgs<CalibrationPointFormArguments>(
        orElse: () => CalibrationPointFormArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => CalibrationPointForm(
          key: args.key,
          editedCalibrationPoint: args.editedCalibrationPoint,
          projectId: args.projectId,
        ).wrappedRoute(context),
        settings: data,
      );
    },
    FingerprintForm: (data) {
      final args = data.getArgs<FingerprintFormArguments>(
        orElse: () => FingerprintFormArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => FingerprintForm(
          key: args.key,
          projectId: args.projectId,
        ).wrappedRoute(context),
        settings: data,
      );
    },
    CellForm: (data) {
      final args = data.getArgs<CellFormArguments>(
        orElse: () => CellFormArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => CellForm(
          key: args.key,
          editedCell: args.editedCell,
          projectId: args.projectId,
        ).wrappedRoute(context),
        settings: data,
      );
    },
    ProjectMenu: (data) {
      final args = data.getArgs<ProjectMenuArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => ProjectMenu(
          key: args.key,
          projectId: args.projectId,
          projectName: args.projectName,
        ).wrappedRoute(context),
        settings: data,
      );
    },
    AccessPointSelectNetwork: (data) {
      final args = data.getArgs<AccessPointSelectNetworkArguments>(
        orElse: () => AccessPointSelectNetworkArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => AccessPointSelectNetwork(
          key: args.key,
          projectId: args.projectId,
        ).wrappedRoute(context),
        settings: data,
      );
    },
    MapPicker: (data) {
      final args = data.getArgs<MapPickerArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => MapPicker(
          key: args.key,
          projectId: args.projectId,
          onSetPosition: args.onSetPosition,
          onCancel: args.onCancel,
        ).wrappedRoute(context),
        settings: data,
      );
    },
    Settings: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => Settings().wrappedRoute(context),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// AccessPoints arguments holder class
class AccessPointsArguments {
  final Key key;
  final UniqueId projectId;
  AccessPointsArguments({this.key, this.projectId});
}

/// CalibrationPoints arguments holder class
class CalibrationPointsArguments {
  final Key key;
  final UniqueId projectId;
  CalibrationPointsArguments({this.key, this.projectId});
}

/// CalibrationFingerprints arguments holder class
class CalibrationFingerprintsArguments {
  final Key key;
  final UniqueId projectId;
  final UniqueId calibrationPointId;
  CalibrationFingerprintsArguments(
      {this.key, this.projectId, this.calibrationPointId});
}

/// Cells arguments holder class
class CellsArguments {
  final Key key;
  final UniqueId projectId;
  CellsArguments({this.key, this.projectId});
}

/// ProjectForm arguments holder class
class ProjectFormArguments {
  final Key key;
  final Project editedProject;
  ProjectFormArguments({this.key, this.editedProject});
}

/// AccessPointForm arguments holder class
class AccessPointFormArguments {
  final Key key;
  final AccessPoint editedAccessPoint;
  final UniqueId projectId;
  AccessPointFormArguments(
      {this.key, this.editedAccessPoint, @required this.projectId});
}

/// CalibrationFingerprintForm arguments holder class
class CalibrationFingerprintFormArguments {
  final Key key;
  final UniqueId calibrationPointId;
  final UniqueId projectId;
  CalibrationFingerprintFormArguments(
      {this.key, this.calibrationPointId, this.projectId});
}

/// CalibrationPointForm arguments holder class
class CalibrationPointFormArguments {
  final Key key;
  final CalibrationPoint editedCalibrationPoint;
  final UniqueId projectId;
  CalibrationPointFormArguments(
      {this.key, this.editedCalibrationPoint, this.projectId});
}

/// FingerprintForm arguments holder class
class FingerprintFormArguments {
  final Key key;
  final UniqueId projectId;
  FingerprintFormArguments({this.key, this.projectId});
}

/// CellForm arguments holder class
class CellFormArguments {
  final Key key;
  final Cell editedCell;
  final UniqueId projectId;
  CellFormArguments({this.key, this.editedCell, this.projectId});
}

/// ProjectMenu arguments holder class
class ProjectMenuArguments {
  final Key key;
  final UniqueId projectId;
  final Name projectName;
  ProjectMenuArguments(
      {this.key, @required this.projectId, @required this.projectName});
}

/// AccessPointSelectNetwork arguments holder class
class AccessPointSelectNetworkArguments {
  final Key key;
  final UniqueId projectId;
  AccessPointSelectNetworkArguments({this.key, this.projectId});
}

/// MapPicker arguments holder class
class MapPickerArguments {
  final Key key;
  final UniqueId projectId;
  final dynamic Function(Offset) onSetPosition;
  final Function onCancel;
  MapPickerArguments(
      {this.key,
      @required this.projectId,
      @required this.onSetPosition,
      @required this.onCancel});
}
