// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../../../features/access_point/04_infrastructure/data_source/remote/access_point_firestore_data_source.dart';
import '../../../features/access_point/02_application/form/access_point_form_bloc.dart';
import '../../../features/access_point/04_infrastructure/repositories/access_point_repository_impl.dart';
import '../../../features/access_point/04_infrastructure/data_source/local/access_point_sembast_data_source.dart';
import '../../../features/access_point/02_application/list/access_points_bloc.dart';
import '../../../features/calibration_fingerprint/04_infrastructure/repositories/calibration_fingerprint_cloud_repository_impl.dart';
import '../../../features/calibration_fingerprint/02_application/form/services/calibration_fingerprint_cloud_service.dart';
import '../../../features/calibration_fingerprint/04_infrastructure/data_source/remote/calibration_fingerprint_firestore_data_source.dart';
import '../../../features/calibration_fingerprint/02_application/form/calibration_fingerprint_form_bloc.dart';
import '../../../features/calibration_fingerprint/04_infrastructure/repositories/calibration_fingerprint_repository_impl.dart';
import '../../../features/calibration_fingerprint/04_infrastructure/data_source/local/calibration_fingerprint_sembast_data_source.dart';
import '../../../features/calibration_fingerprint/02_application/form/services/calibration_fingerprint_service.dart';
import '../../../features/calibration_fingerprint/02_application/list/calibration_fingerprints_bloc.dart';
import '../../../features/calibration_point/04_infrastructure/data_source/remote/calibration_point_firestore_data_source.dart';
import '../../../features/calibration_point/02_application/form/calibration_point_form_bloc.dart';
import '../../../features/calibration_point/04_infrastructure/repositories/calibration_point_repository_impl.dart';
import '../../../features/calibration_point/04_infrastructure/data_source/local/calibration_point_sembast_data_source.dart';
import '../../../features/calibration_point/02_application/list/calibration_points_bloc.dart';
import '../../../features/cell/04_infrastructure/data_source/remote/cell_firestore_data_source.dart';
import '../../../features/cell/02_application/form/cell_form_bloc.dart';
import '../../../features/cell/04_infrastructure/repositories/cell_repository_impl.dart';
import '../../../features/cell/04_infrastructure/data_source/local/cell_sembast_data_source.dart';
import '../../../features/cell/03_domain/services/cell_service_impl.dart';
import '../../../features/cell/02_application/list/cells_bloc.dart';
import '../../04_infrastructure/data_scource/remote/cloud_storage_data_source.dart';
import '../../../features/fingerprint/04_infrastructure/data_source/remote/fingerprint_firestore_data_source.dart';
import '../../../features/fingerprint/02_application/form/fingerprint_form_bloc.dart';
import '../../../features/fingerprint/04_infrastructure/repositories/fingerprint_repository_impl.dart';
import '../../../features/fingerprint/04_infrastructure/data_source/local/fingerprint_sembast_data_source.dart';
import '../../../features/access_point/04_infrastructure/data_source/i_access_point_data_source.dart';
import '../../../features/access_point/03_domain/repositories/i_access_point_repository.dart';
import '../../../features/calibration_fingerprint/03_domain/repositories/i_calibration_fingerprint_cloud_repository.dart';
import '../../../features/calibration_fingerprint/04_infrastructure/data_source/i_calibration_fingerprint_data_source.dart';
import '../../../features/calibration_fingerprint/03_domain/repositories/i_calibration_fingerprint_repository.dart';
import '../../../features/calibration_fingerprint/02_application/form/services/i_calibration_fingerprint_service.dart';
import '../../../features/calibration_point/04_infrastructure/data_source/i_calibration_point_data_source.dart';
import '../../../features/calibration_point/03_domain/repositories/i_calibration_point_repository.dart';
import '../../../features/cell/04_infrastructure/data_source/i_cell_data_source.dart';
import '../../../features/cell/03_domain/repositories/i_cell_repository.dart';
import '../../../features/cell/03_domain/services/i_cell_service.dart';
import '../../../features/fingerprint/04_infrastructure/data_source/i_fingerprint_data_source.dart';
import '../../../features/fingerprint/03_domain/repositories/i_fingerprint_repository.dart';
import '../../04_infrastructure/data_scource/i_image_data_source.dart';
import '../../03_domain/repositories/i_image_repository.dart';
import '../../03_domain/repositories/i_location_calculation_repository.dart';
import '../../03_domain/services/location_calculation/i_location_calculation_service.dart';
import '../../../features/project/04_infrastructure/data_source/i_project_data_source.dart';
import '../../../features/project/03_domain/repositories/i_project_repository.dart';
import '../../../features/fingerprint/04_infrastructure/data_source/i_recalculated_fingerprint_data_source.dart';
import '../../../features/fingerprint/03_domain/repositories/i_recalculated_fingerprint_repository.dart';
import '../../04_infrastructure/data_scource/i_settings_data_source.dart';
import '../../03_domain/repositories/i_settings_repository.dart';
import '../../03_domain/repositories/i_signal_repository.dart';
import '../../04_infrastructure/repositories/image_repository.dart';
import '../../03_domain/services/location_calculation/local_location_calculation_service.dart';
import '../../04_infrastructure/data_scource/local/local_storage_data_source.dart';
import '../../04_infrastructure/repositories/location_calculation_cloud_repository_impl.dart';
import '../../03_domain/services/location_calculation/location_calculation_cloud_service.dart';
import '../../02_application/map_picker/map_picker_bloc.dart';
import '../../../features/project/04_infrastructure/data_source/remote/project_firestore_repository.dart';
import '../../../features/project/02_application/form/project_form_bloc.dart';
import '../../../features/project/02_application/menu/project_menu_bloc.dart';
import '../../../features/project/04_infrastructure/repositories/project_repository_impl.dart';
import '../../../features/project/04_infrastructure/data_source/local/project_sembast_data_source.dart';
import '../../../features/project/02_application/list/projects_bloc.dart';
import '../../../features/fingerprint/04_infrastructure/data_source/remote/recalculated_fingerprint_firestore_data_source.dart';
import '../../../features/fingerprint/04_infrastructure/repositories/recalculated_fingerprint_repository_impl.dart';
import '../../02_application/scannednetworks/scanned_networks_bloc.dart';
import '../../02_application/settings/settings_bloc.dart';
import '../../04_infrastructure/repositories/settings_repository.dart';
import '../../04_infrastructure/data_scource/local/settings_shared_preference.dart';
import '../../04_infrastructure/repositories/signal_repository.dart';

/// Environment names
const _local_dev = 'local_dev';
const _prod = 'prod';
const _dev = 'dev';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<IAccessPointDataSource>(() => AccessPointSembastDataSource(),
      registerFor: {_local_dev});
  gh.lazySingleton<IAccessPointDataSource>(
      () => AccessPointFirestoreDataSource(),
      registerFor: {_prod, _dev});
  gh.lazySingleton<IAccessPointRepository>(
      () => AccessPointRepositoryImpl(get<IAccessPointDataSource>()));
  gh.factory<ICalibrationFingerprintCloudRepository>(
      () => CalibrationFingerprintCloudRepository(),
      registerFor: {_dev});
  gh.lazySingleton<ICalibrationFingerprintDataSource>(
      () => CalibrationFingerprintSembastDataSource(),
      registerFor: {_local_dev});
  gh.lazySingleton<ICalibrationFingerprintDataSource>(
      () => CalibrationFingerprintFirestoreDataSource(),
      registerFor: {_prod, _dev});
  gh.lazySingleton<ICalibrationFingerprintRepository>(() =>
      CalibrationFingerprintRepositoryImpl(
          get<ICalibrationFingerprintDataSource>()));
  gh.factory<ICalibrationFingerprintService>(
      () => CalibrationFingerprintCloudService(
          cpCloudRepository: get<ICalibrationFingerprintCloudRepository>()),
      registerFor: {_dev});
  gh.lazySingleton<ICalibrationPointDataSource>(
      () => CalibrationPointSembastDataSource(),
      registerFor: {_local_dev});
  gh.lazySingleton<ICalibrationPointDataSource>(
      () => CalibrationPointFirestoreDataSource(),
      registerFor: {_prod, _dev});
  gh.lazySingleton<ICalibrationPointRepository>(
      () => CalibrationPointRepositoryImpl(get<ICalibrationPointDataSource>()));
  gh.lazySingleton<ICellDataSource>(() => CellSembastDataSource(),
      registerFor: {_local_dev});
  gh.lazySingleton<ICellDataSource>(() => CellFirestoreDataSource(),
      registerFor: {_prod, _dev});
  gh.lazySingleton<ICellRepository>(
      () => CellRepositoryImpl(get<ICellDataSource>()));
  gh.lazySingleton<IFingerprintDataSource>(
      () => FingerprintFirestoreDataSource(),
      registerFor: {_prod, _dev});
  gh.lazySingleton<IFingerprintDataSource>(() => FingerprintSembastDataSource(),
      registerFor: {_local_dev});
  gh.lazySingleton<IFingerprintRepository>(
      () => FingerprintRepositoryImpl(get<IFingerprintDataSource>()));
  gh.lazySingleton<IImageDataSource>(() => CloudStorageDataSource(),
      registerFor: {_prod, _dev});
  gh.lazySingleton<IImageDataSource>(() => LocalStorageDataSource(),
      registerFor: {_local_dev});
  gh.lazySingleton<IImageRepository>(
      () => ImageRepository(get<IImageDataSource>()));
  gh.lazySingleton<ILocationCalculationCloudRepository>(
      () => LocationCalculationCloudRepository());
  gh.factory<ILocationCalculationService>(
      () => LocationCalculationCloudService(
          lcCloudRepository: get<ILocationCalculationCloudRepository>()),
      registerFor: {_dev});
  gh.lazySingleton<IProjectDataSource>(() => ProjectFirestoreDataSource(),
      registerFor: {_prod, _dev});
  gh.lazySingleton<IProjectDataSource>(() => ProjectSembastDataSource(),
      registerFor: {_local_dev});
  gh.lazySingleton<IProjectRepository>(
      () => ProjectRepositoryImpl(get<IProjectDataSource>()));
  gh.lazySingleton<IRecalculatedFingerprintDataSource>(
      () => RecalculatedFingerprintFirestoreDataSource(),
      registerFor: {_prod, _dev});
  gh.lazySingleton<IRecalculatedFingerprintRepository>(() =>
      RecalculatedFingerprintRepositoryImpl(
          get<IRecalculatedFingerprintDataSource>()));
  gh.lazySingleton<ISettingsDataSource>(() => SettingsSharedPreferences());
  gh.lazySingleton<ISettingsRepository>(
      () => SettingsRepository(get<ISettingsDataSource>()));
  gh.factory<ISignalRepository>(() => SignalRepository());
  gh.factory<MapPickerBloc>(() => MapPickerBloc(
      pRepository: get<IProjectRepository>(),
      iRepository: get<IImageRepository>()));
  gh.factory<ProjectFormBloc>(() => ProjectFormBloc(
      pRepository: get<IProjectRepository>(),
      iRepository: get<IImageRepository>()));
  gh.factory<ProjectMenuBloc>(
      () => ProjectMenuBloc(projectRepository: get<IProjectRepository>()));
  gh.factory<ProjectsBloc>(
      () => ProjectsBloc(pRepository: get<IProjectRepository>()));
  gh.factory<ScannedNetworksBloc>(() => ScannedNetworksBloc(
      sRepository: get<ISignalRepository>(),
      apRepository: get<IAccessPointRepository>()));
  gh.factory<SettingsBloc>(() => SettingsBloc(
        sRepository: get<ISettingsRepository>(),
        rfRepository: get<IRecalculatedFingerprintRepository>(),
        locService: get<ILocationCalculationService>(),
      ));
  gh.factory<AccessPointFormBloc>(
      () => AccessPointFormBloc(apRepository: get<IAccessPointRepository>()));
  gh.factory<AccessPointsBloc>(
      () => AccessPointsBloc(apRepository: get<IAccessPointRepository>()));
  gh.factory<CalibrationFingerprintFormBloc>(() =>
      CalibrationFingerprintFormBloc(
          sRepository: get<ISignalRepository>(),
          cfService: get<ICalibrationFingerprintService>()));
  gh.factory<CalibrationFingerprintsBloc>(() => CalibrationFingerprintsBloc(
      cfRepository: get<ICalibrationFingerprintRepository>()));
  gh.factory<CalibrationPointFormBloc>(() => CalibrationPointFormBloc(
      apRepository: get<ICalibrationPointRepository>(),
      pRepository: get<IProjectRepository>()));
  gh.factory<CalibrationPointsBloc>(() =>
      CalibrationPointsBloc(cpRepository: get<ICalibrationPointRepository>()));
  gh.factory<CellFormBloc>(() => CellFormBloc(
      cRepository: get<ICellRepository>(),
      pRepository: get<IProjectRepository>()));
  gh.factory<CellsBloc>(() => CellsBloc(cRepository: get<ICellRepository>()));
  gh.factory<FingerprintFormBloc>(() => FingerprintFormBloc(
        locationCalculationService: get<ILocationCalculationService>(),
        sRepository: get<ISettingsRepository>(),
        fRepository: get<IFingerprintRepository>(),
        signalRepository: get<ISignalRepository>(),
      ));
  gh.factory<ICalibrationFingerprintService>(
      () => CalibrationFingerprintService(
            apRepository: get<IAccessPointRepository>(),
            cfRepository: get<ICalibrationFingerprintRepository>(),
            cpRepository: get<ICalibrationPointRepository>(),
          ),
      registerFor: {_prod, _local_dev});
  gh.lazySingleton<ICellService>(() => CellService(
      cRepository: get<ICellRepository>(),
      pRepository: get<IProjectRepository>()));
  gh.factory<ILocationCalculationService>(
      () => LocalLocationCalculationService(
            cpRepository: get<ICalibrationPointRepository>(),
            apRepository: get<IAccessPointRepository>(),
            pRepository: get<IProjectRepository>(),
            fRepository: get<IFingerprintRepository>(),
            cService: get<ICellService>(),
          ),
      registerFor: {_prod, _local_dev});
  return get;
}
