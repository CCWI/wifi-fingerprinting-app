using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using ClosedXML.Excel;
using DocumentFormat.OpenXml.Drawing;

namespace FirebaseToExcel.ClosedXML
{
    public class ExcelHelper
    {
        private static int _sheetIdCounter = 0;

        public static void CreateSpreadSheet(IEnumerable<FingerprintPosition> selectedFingerprints, string collectionName = null,
            string fileName = null, string fileDirPath = null)
        {
            //Set up names for file and sheet
            string finalFileName = SetFinalFileName(fileName);
            string finalFileDirPath = SetFinalFileLocation(fileDirPath, finalFileName);
            string finalSheetName = SetSheetNameFromCollectionName(collectionName);
            
            //Creating workbook
            IXLWorkbook wb = new XLWorkbook();
            IXLWorksheet ws = wb.Worksheets.Add(finalSheetName);
            
            //Add header
            IEnumerable<string> headerData = new List<string> {"ID", "Measuring Point", "Real X", "Real Y", "Real Cell","Calculated X"," Calculated Y","Cell"};
            CreateHeaderRow(headerData, ws);
            
            //Add body
            CreateBodyRows(selectedFingerprints, ws);
            wb.Worksheets.FirstOrDefault()?.Columns().AdjustToContents();

            //Save
            wb.SaveAs(finalFileDirPath);
        }

        public static void CreateSpreadSheets(IDictionary<string, ICollection<FingerprintPosition>> collectionFingerprintsDictionary, string fileName = null, string fileDirPath = null)
        {
            //Set up name excel file
            string finalFileName = SetFinalFileName(fileName);
            string finalFileDirPath = SetFinalFileLocation(fileDirPath, finalFileName);
            
            //Creating workbook
            IXLWorkbook wb = new XLWorkbook();

            foreach(var fingerprintCollection in collectionFingerprintsDictionary)
            {
                //Creating worksheet
                string finalSheetName = SetSheetNameFromCollectionName(fingerprintCollection.Key);
                IXLWorksheet ws = wb.Worksheets.Add(finalSheetName);

                //Add header
                IEnumerable<string> headerData = new List<string> { "ID", "Measuring Point", "Real X", "Real Y", "Real Cell", "Calculated X", " Calculated Y", "Cell", "Distance", "Mean Distance", "Correct Room"};
                CreateHeaderRow(headerData, ws);

                //Add body
                CreateBodyRows(fingerprintCollection.Value, ws);
                ws.Columns().AdjustToContents();
            }

            //Save
            wb.SaveAs(finalFileDirPath);
        }

        private static void CreateBodyRows(IEnumerable<FingerprintPosition> selectedFingerprints, IXLWorksheet worksheet)
        {
            string numberFormatting = "#,##0.000";
            int rowIndex = 3;
            int measuringPointIndex = 3;

            foreach (string baseId in Fingerprints.BaseIds)
            {
                //Sorting according to fingerprints list
                FingerprintPosition fingerprint = selectedFingerprints.SingleOrDefault((fp) => fp.Id == baseId);

                if(fingerprint == null)
                {
                    fingerprint = new FingerprintPosition
                    {
                        Id = "Abhanden gekommen",
                        X = -404,
                        Y = -404,
                        IncludedInCells = new List<string>(),
                    };
                }

                //Actual data copy
                int columnIndex = 2;

                var idCell = worksheet.Cell(rowIndex, columnIndex);
                idCell.DataType = XLDataType.Text;
                idCell.Value = fingerprint.Id;
                idCell.Style.Border.OutsideBorder = XLBorderStyleValues.Thin;
                columnIndex++;

                var realLetterCell = worksheet.Cell(rowIndex, columnIndex);
                realLetterCell.DataType = XLDataType.Text;
                realLetterCell.Value = measuringPointIndex % 3 == 0 ? Fingerprints.MeasuringPoints[(measuringPointIndex / 3) - 1].Letter : "";
                realLetterCell.Style.Border.OutsideBorder = XLBorderStyleValues.Thin;
                columnIndex++;

                var realXCell = worksheet.Cell(rowIndex, columnIndex);                
                if (measuringPointIndex % 3 == 0)
                {
                    realXCell.DataType = XLDataType.Number;
                    realXCell.Style.NumberFormat.Format = numberFormatting;
                    realXCell.Value = Fingerprints.MeasuringPoints[(measuringPointIndex / 3) - 1].X;
                }
                else
                {
                    realXCell.DataType = XLDataType.Text;
                    realXCell.Value = "";
                }
                realXCell.Style.Border.OutsideBorder = XLBorderStyleValues.Thin;
                columnIndex++;

                var realYCell = worksheet.Cell(rowIndex, columnIndex);
                if (measuringPointIndex % 3 == 0)
                {
                    realYCell.DataType = XLDataType.Number;
                    realYCell.Style.NumberFormat.Format = numberFormatting;
                    realYCell.Value = Fingerprints.MeasuringPoints[(measuringPointIndex / 3) - 1].Y;
                }
                else
                {
                    realYCell.DataType = XLDataType.Text;
                    realYCell.Value = "";
                }
                realYCell.Style.Border.OutsideBorder = XLBorderStyleValues.Thin;
                columnIndex++;

                var realCellsCell = worksheet.Cell(rowIndex, columnIndex);
                realCellsCell.DataType = XLDataType.Text;
                realCellsCell.Value = measuringPointIndex % 3 == 0 ? Fingerprints.MeasuringPoints[(measuringPointIndex / 3) - 1].Cell : "";
                realCellsCell.Style.Border.OutsideBorder = XLBorderStyleValues.Thin;
                columnIndex++;

                var xCell = worksheet.Cell(rowIndex, columnIndex);
                xCell.DataType = XLDataType.Number;
                xCell.Style.NumberFormat.Format = numberFormatting;
                xCell.Style.Border.OutsideBorder = XLBorderStyleValues.Thin;
                xCell.Value = fingerprint.X;
                columnIndex++;

                var yCell = worksheet.Cell(rowIndex, columnIndex);
                yCell.DataType = XLDataType.Number;
                yCell.Style.NumberFormat.Format = numberFormatting;
                yCell.Style.Border.OutsideBorder = XLBorderStyleValues.Thin;
                yCell.Value = fingerprint.Y;
                columnIndex++;
                
                var includedInCellsCell = worksheet.Cell(rowIndex, columnIndex);
                includedInCellsCell.DataType = XLDataType.Text;
                includedInCellsCell.Value = CellListToString(fingerprint.IncludedInCells);
                includedInCellsCell.Style.Border.OutsideBorder = XLBorderStyleValues.Thin;
                columnIndex++;

                var distanceCell = worksheet.Cell(rowIndex, columnIndex);
                distanceCell.DataType = XLDataType.Number;
                distanceCell.Style.NumberFormat.Format = numberFormatting;
                distanceCell.Style.Border.OutsideBorder = XLBorderStyleValues.Thin;
                distanceCell.Value = CalculateDistance(Fingerprints.MeasuringPoints[(measuringPointIndex / 3) - 1], fingerprint);
                columnIndex++;

                var meanDistanceCell = worksheet.Cell(rowIndex, columnIndex);
                if(measuringPointIndex % 3 == 2)
                {
                    meanDistanceCell.DataType = XLDataType.Number;
                    meanDistanceCell.Style.NumberFormat.Format = numberFormatting;
                    meanDistanceCell.Value = CalculateMeanDistance(rowIndex, columnIndex, worksheet);
                }
                else
                {
                    meanDistanceCell.DataType = XLDataType.Text;
                    meanDistanceCell.Value = "";
                }
                meanDistanceCell.Style.Border.OutsideBorder = XLBorderStyleValues.Thin;
                columnIndex++;

                var correctRoomCell = worksheet.Cell(rowIndex, columnIndex);
                correctRoomCell.DataType = XLDataType.Number;
                correctRoomCell.Style.NumberFormat.Format = numberFormatting;
                correctRoomCell.Style.Border.OutsideBorder = XLBorderStyleValues.Thin;
                correctRoomCell.Value = IsSameRoom(rowIndex, columnIndex, worksheet);

                rowIndex++;
                measuringPointIndex++;
            }
        }

        private static void CreateHeaderRow(IEnumerable<string> headerData, IXLWorksheet worksheet)
        {
            int rowIndex = 2;
            int columnIndex = 1;
            
            foreach (string headerString in headerData)
            {
                columnIndex++;
                worksheet.Cell(rowIndex, columnIndex).Value = headerString;
            }

            IXLRange headerRange = worksheet.Range(worksheet.Cell(rowIndex, 2).Address,
                worksheet.Cell(rowIndex, columnIndex).Address);
            headerRange.Style.Font.Bold = true;
            headerRange.Style.Border.OutsideBorder = XLBorderStyleValues.Medium;
            headerRange.Style.Alignment.Horizontal = XLAlignmentHorizontalValues.Center;
        }
        
        private static string SetSheetNameFromCollectionName(string collectionName)
        {
            string sheetName;

            if (collectionName != null)
            {
                // Get collection specifics
                string[] numbersInCollectionName = Regex.Split(collectionName, @"\D+");
                int algorithm = int.Parse(numbersInCollectionName[1]);
                string kVal = numbersInCollectionName[2];

                string algorithmStr = algorithm == 2 ? "wKNN" : "KNN";

                sheetName = $"{algorithmStr}, K = {kVal}";
            }
            else
            {
                sheetName = $"Sheet {_sheetIdCounter + 1}";
            }

            return sheetName;
        }
        
        private static string SetFinalFileLocation(string dirPath, string fileName)
        {
            string finalFileLocation;
            if (dirPath != null)
            {
                finalFileLocation = $"{dirPath}\\{fileName}";
            }
            else
            {
                finalFileLocation = fileName;
            }

            return finalFileLocation;
        }

        private static string SetFinalFileName(string fileName)
        {
            string finalFileName;

            if (fileName != null)
            {
                finalFileName = fileName.Contains(".xlsx") ? fileName : fileName + ".xlsx";
            }
            else
            {
                string dateToday = DateTime.Now.ToString("yyyy_MM_d");
                finalFileName = $"Output_{dateToday}.xlsx";
            }

            return finalFileName;
        }

        private static string CellListToString(List<string> cellsIncludingPosition)
        {
            return string.Join(",", cellsIncludingPosition);
        }

        private static double CalculateDistance (FingerprintPositionMeasuringPoint measuringPoint, FingerprintPosition fingerprint)
        {
            return Math.Sqrt(Math.Pow(measuringPoint.X - fingerprint.X, 2) + Math.Pow(measuringPoint.Y - fingerprint.Y, 2));
        }

        private static double CalculateMeanDistance(int rowIndex, int columnIndex, IXLWorksheet ws)
        {
            double distanceSum = 0;

            for (int i = 0; i < 3; i++)
            {
                var distanceToAdd = Convert.ToDouble(ws.Row(rowIndex - i).Cell(columnIndex - 1).Value);
                distanceSum += distanceToAdd;
            }

            return distanceSum / 3;
        }

        private static int IsSameRoom(int rowIndex, int columnIndex, IXLWorksheet ws)
        {
            bool isSameRoom = String.Equals(Convert.ToString(ws.Row(rowIndex - rowIndex % 3).Cell(columnIndex - 6).Value), Convert.ToString(ws.Row(rowIndex).Cell(columnIndex - 3).Value));
            return isSameRoom ? 1 : 0;
        }
    }
}