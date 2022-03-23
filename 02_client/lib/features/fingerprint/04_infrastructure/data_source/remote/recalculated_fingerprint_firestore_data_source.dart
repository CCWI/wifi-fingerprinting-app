import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../../../../common/04_infrastructure/data_scource/data_source_exception.dart';
import '../../dtos/recalculated_fingerprint_dto.dart';
import '../i_recalculated_fingerprint_data_source.dart';

@LazySingleton(
    as: IRecalculatedFingerprintDataSource,
    env: [Environment.prod, Environment.dev])
class RecalculatedFingerprintFirestoreDataSource
    implements IRecalculatedFingerprintDataSource {
  @override
  Future<void> createRecalculatedFingerprints(
      List<RecalculatedFingerprintDto> fingerprints,
      String collectionName) async {
    try {
      final rfCollection =
          FirebaseFirestore.instance.collection(collectionName);
      final WriteBatch recalculatedFingerprintsBatch =
          FirebaseFirestore.instance.batch();

      await Future.forEach(fingerprints, (RecalculatedFingerprintDto fp) async {
        final recalculatedFingerprintDoc = rfCollection.doc(fp.id);
        recalculatedFingerprintsBatch
          ..set(recalculatedFingerprintDoc, fp.toJson());
      });

      return await recalculatedFingerprintsBatch.commit();
    } catch (e) {
      throw DataSourceException(exception: e);
    }
  }
}
