import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/01_presentation/routes/router.gr.dart';
import '../../../../common/01_presentation/widgets/app_scaffold.dart';
import '../../../../common/01_presentation/widgets/centered_loading_screen.dart';
import '../../../../common/03_domain/value_objects/value_objects.dart';
import '../../../../common/05_utils/injection/inject.dart';
import '../../02_application/menu/project_menu_bloc.dart';
import 'widgets/project_menu_content.dart';

class ProjectMenu extends StatelessWidget implements AutoRouteWrapper {
  final UniqueId projectId;
  final Name projectName;

  const ProjectMenu({
    Key key,
    @required this.projectId,
    @required this.projectName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: Text(projectName.getOrCrash()),
      bodyColor: Theme.of(context).primaryColor,
      body: BlocBuilder<ProjectMenuBloc, ProjectMenuState>(
        builder: (context, state) {
          return state.maybeMap(
            initial: (_) => CenteredLoadingScreen(),
            loadInProgress: (_) => CenteredLoadingScreen(),
            loadScuccess: (s) => ProjectMenuContent(
              project: s.project,
              onAccessPointsClicked: (isNewCreation) => _navigateToAccessPoints(isNewCreation, context),
              onCalibrationPointsClicked: (isNewCreation) => _navigateToCalibrationPoints(isNewCreation, context),
              onFingerprintsClicked: (isNewCreation) => _navigateToFingerprints(isNewCreation, context),
              onCellsClicked: (isNewCreation) => _navigateToCells(isNewCreation, context),
            ),
            orElse: () => Container(),
          );
        },
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) => getIt<ProjectMenuBloc>()
          ..add(ProjectMenuEvent.initialized(projectId)),
        child: this,
      );

  void _navigateToAccessPoints(bool createNewAccessPointInstead, BuildContext context) {
    final router = ExtendedNavigator.of(context);
    if (createNewAccessPointInstead) {
      router.push(
        Routes.accessPointSelectNetwork,
        arguments: AccessPointSelectNetworkArguments(
          projectId: projectId,
        ),
      );
    } else {
      router.push(
        Routes.accessPoints,
        arguments: AccessPointsArguments(
          projectId: projectId,
        ),
      );
    }
  }

  void _navigateToCalibrationPoints(bool createNewCalibrationPointInstead, BuildContext context) {
    final router = ExtendedNavigator.of(context);
    if (createNewCalibrationPointInstead) {
      router.push(
        Routes.calibrationPointForm,
        arguments: CalibrationPointFormArguments(
          projectId: projectId,
        ),
      );
    } else {
      router.push(
        Routes.calibrationPoints,
        arguments: CalibrationPointsArguments(
          projectId: projectId,
        ),
      );
    }
  }

  void _navigateToFingerprints(bool createNewFingerprintInstead, BuildContext context) {
    ExtendedNavigator.of(context).push(Routes.fingerprintForm,
        arguments: FingerprintFormArguments(projectId: projectId));
  }

  void _navigateToCells(bool createNewCellsInstead, BuildContext context) {
    final router = ExtendedNavigator.of(context);
    if (createNewCellsInstead) {
      router.push(Routes.cellForm,
          arguments: CellFormArguments(
            projectId: projectId,
          ));
    } else {
      router.push(
        Routes.cells,
        arguments: CellsArguments(
          projectId: projectId,
        ),
      );
    }
  }
}
