using Google.Cloud.Firestore;
using System;
using System.Collections.Generic;
using System.Text;

namespace FirebaseToExcel
{
    public class FingerprintPosition
    {
        public string Id { get; set; }
        public double X { get; set; }
        public double Y { get; set; }

        public List<string> IncludedInCells { get; set; }
    }
    
    public class FingerprintPositionMeasuringPoint
    {
        public string Letter { get; set; }

        public string Cell { get; set; }
        public double X { get; set; }
        public double Y { get; set; }

    }
}
