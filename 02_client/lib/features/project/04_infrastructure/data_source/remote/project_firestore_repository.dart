import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../../common/04_infrastructure/data_scource/data_source_exception.dart';
import '../../../../../common/04_infrastructure/dtos/floormap/floor_map_dto.dart';
import '../../../../../common/04_infrastructure/dtos/project_details/project_details_dto.dart';
import '../../../../../common/05_utils/constants.dart';
import '../../dtos/project_dto.dart';
import '../i_project_data_source.dart';

@LazySingleton(as: IProjectDataSource, env: [Environment.prod, Environment.dev])
class ProjectFirestoreDataSource implements IProjectDataSource {
  final CollectionReference pCollection =
      FirebaseFirestore.instance.collection(Constants.projects);

  Map<String, dynamic> dtoToMap(ProjectDto item, [Map<String, dynamic> other]) {
    final Map<String, dynamic> result = {};
    if (other != null) {
      result.addAll(other);
    }
    result.addAll(item.toJson());
    return result;
  }

  @override
  Stream<KtList<ProjectDto>> watchAll() async* {
    yield* pCollection
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => ProjectDto.fromFirestore(doc))
            .toImmutableList())
        .doOnError(
          (e) => throw DataSourceException(
            exception: e,
          ),
        );
  }

  @override
  Stream<ProjectDto> watchById(String id) async* {
    yield* pCollection
        .where('id', isEqualTo: id)
        .snapshots()
        .map((snapshot) =>
            ProjectDto.fromFirestore(snapshot.docChanges.single.doc))
        .doOnError(
          (e) => throw DataSourceException(
            exception: e,
          ),
        );
  }

  @override
  Future create(ProjectDto project) async {
    final projectData = dtoToMap(project);

    final TransactionHandler createTransaction = (Transaction tx) async {
      //read operations
      final newDoc = await tx.get(pCollection.doc(project.id));
      //write operations
      await tx.set(newDoc.reference, projectData);
    };

    return FirebaseFirestore.instance
        .runTransaction(createTransaction)
        .catchError((e) => throw DataSourceException(exception: e));
  }

  @override
  Future<String> createAndGetReference(ProjectDto project) async {
    final projectData = dtoToMap(project);

    final TransactionHandler createTransaction = (Transaction tx) async {
      //read operations
      final newDoc = await tx.get(pCollection.doc(project.id));
      //write operations
      await tx.set(newDoc.reference, projectData);
      //return reference
      return {'id': newDoc.id};
    };

    return FirebaseFirestore.instance
        .runTransaction(createTransaction)
        .then((idMap) => idMap['id'].toString())
        .catchError((e) => throw DataSourceException(exception: e));
  }

  @override
  Future<ProjectDto> read(String id) async {
    return await pCollection
        .doc(id)
        .get()
        .then((doc) => ProjectDto.fromFirestore(doc))
        .catchError(
          (e) => DataSourceException(
            exception: e,
          ),
        );
  }

  @override
  Future<ProjectDetailsDto> readProjectDetails(String id) async {
    return await pCollection.doc(id).get().then((doc) {
      final projectDto = ProjectDto.fromFirestore(doc);
      return ProjectDetailsDto(
        projectId: id,
        xMaxValue: projectDto.xLength,
        yMaxValue: projectDto.yLength,
        floors: projectDto.floors,
      );
    }).catchError(
      (e) => DataSourceException(
        exception: e,
      ),
    );
  }

  @override
  Future<KtList<FloorMapDto>> readFloorsByProjectId(String projectId) async {
    return await pCollection.doc(projectId).get().then((doc) {
      final projectDto = ProjectDto.fromFirestore(doc);
      return projectDto.floors.toImmutableList();
    }).catchError(
      (e) => DataSourceException(
        exception: e,
      ),
    );
  }

  @override
  Future<FloorMapDto> readFloorById(String projectId, String floorId) async {
    return await pCollection.doc(projectId).get().then((doc) {
      FloorMapDto floorToReturn;
      final floors = ProjectDto.fromFirestore(doc).floors;

      for (FloorMapDto floor in floors) {
        if (floor.id == floorId) {
          floorToReturn = floor;
        }
      }

      return floorToReturn;
    }).catchError(
      (e) => DataSourceException(
        exception: e,
      ),
    );
  }

  @override
  Future<Offset> readCartesianDimensionsById(String id) async {
    return await pCollection.doc(id).get().then((doc) {
      final projectDto = ProjectDto.fromFirestore(doc);
      return Offset(projectDto.xLength, projectDto.yLength);
    }).catchError(
      (e) => DataSourceException(
        exception: e,
      ),
    );
  }

  @override
  Future update(ProjectDto project) async {
    final TransactionHandler updateTransaction = (Transaction tx) async {
      //read operations
      final docToUpdate = await tx.get(pCollection.doc(project.id));
      //write operations
      await tx.update(docToUpdate.reference, dtoToMap(project));
    };

    return FirebaseFirestore.instance
        .runTransaction(updateTransaction)
        .catchError((e) => throw DataSourceException(exception: e));
  }

  @override
  Future delete(String id) async {
    final TransactionHandler deleteTransaction = (Transaction tx) async {
      //read operations
      final docToDelete = await tx.get(pCollection.doc(id));
      final relatedDocs = await _getAllRelatedDocuments(id);
      //write operations
      final relatedDocRefs =
          relatedDocs.map((queryDoc) => queryDoc.reference).toList();

      relatedDocRefs.add(docToDelete.reference);
      relatedDocRefs.forEach((docToBeDeletedReference) {
        tx.delete(docToBeDeletedReference);
      });
    };

    return FirebaseFirestore.instance
        .runTransaction(deleteTransaction)
        .catchError((e) => throw DataSourceException(exception: e));
  }

  Future<List<QueryDocumentSnapshot>> _getAllRelatedDocuments(
      String projectId) async {
    final relatedAccessPoints =
        await _getRelatedItemDocuments(projectId, Constants.access_points);
    final relatedFingerprints =
        await _getRelatedItemDocuments(projectId, Constants.fingerprints);
    final relatedCalibrationPoints =
        await _getRelatedItemDocuments(projectId, Constants.calibration_points);
    final relatedCalibrationFingerprints = await _getRelatedItemDocuments(
        projectId, Constants.calibration_fingerprints);
    final relatedCells =
        await _getRelatedItemDocuments(projectId, Constants.cells);
    return relatedAccessPoints +
        relatedFingerprints +
        relatedCalibrationPoints +
        relatedCalibrationFingerprints +
        relatedCells;
  }

  Future<List<QueryDocumentSnapshot>> _getRelatedItemDocuments(
      String projectId, String collectionPath) async {
    return await FirebaseFirestore.instance
        ?.collection(collectionPath)
        ?.where('projectId', isEqualTo: projectId)
        ?.get()
        ?.then((snapshot) => snapshot.docs);
  }
}
