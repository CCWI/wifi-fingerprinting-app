using Google.Cloud.Firestore;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using FirebaseToExcel.ClosedXML;
using Google.Apis.Auth.OAuth2;

namespace FirebaseToExcel
{
    class Program
    {
        static async Task Main(string[] args)
        {
            FirestoreDb db = GetDbReference();

            IDictionary<string, ICollection<FingerprintPosition>> CollectionFingerprintPositionDictionary = await GetRecalculatedFingerprintsS(Fingerprints.CollectionNames, db);

            ExcelHelper.CreateSpreadSheets(CollectionFingerprintPositionDictionary, "TestData.xlsx");
        }

        private static async Task<ICollection<FingerprintPosition>> GetRecalculatedFingerprints(string collection,
            FirestoreDb db)
        {
            ICollection<FingerprintPosition> fingerprintPositions = new List<FingerprintPosition>();

            CollectionReference collectionRef = db.Collection(collection);
            QuerySnapshot snapshot = await collectionRef.GetSnapshotAsync();

            foreach (DocumentSnapshot doc in snapshot.Documents)
            {
                string baseId = doc.GetValue<string>("fingerprintBaseId");

                if (Fingerprints.IsSelectedBaseFingerprint(baseId))
                {
                    Dictionary<string, object> calculatedPositionDictionary =
                        doc.GetValue<Dictionary<string, object>>("calculatedPosition");

                    var cellsIncludingPositionDictionaryList =
                        doc.GetValue<IEnumerable<Dictionary<string, object>>>("cellsIncludingPosition");

                    var cellsIncludingPosition = cellsIncludingPositionDictionaryList.Select(dict => dict["name"] as string).ToList();

                    FingerprintPosition fingerprintPosition = new FingerprintPosition
                    {
                        Id = baseId,
                        X = (double) calculatedPositionDictionary["x"],
                        Y = (double) calculatedPositionDictionary["y"],
                        IncludedInCells = cellsIncludingPosition
                    };

                    fingerprintPositions.Add(fingerprintPosition);
                }
            }

            return fingerprintPositions;
        }
        
        private static async Task<IDictionary<string,ICollection<FingerprintPosition>>> GetRecalculatedFingerprintsS(string[] collections,
            FirestoreDb db)
        {
            IDictionary<string,ICollection<FingerprintPosition>> collectionFingerprintsDictionary = new Dictionary<string, ICollection<FingerprintPosition>>();

            foreach (var collection in collections)
            {
                var fingerprints = await GetRecalculatedFingerprints(collection, db);
                collectionFingerprintsDictionary[collection] = fingerprints;
            }

            return collectionFingerprintsDictionary;
        }

        private static FirestoreDb GetDbReference()
        {
            return FirestoreDb.Create("indoorpos-19766");
        }
    }
}