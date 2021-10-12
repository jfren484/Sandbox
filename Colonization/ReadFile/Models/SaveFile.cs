using System.Collections.Generic;
using System.Drawing;
using System.Linq;

namespace ReadFile.Models
{
    public class SaveFile
    {
        public string Header { get; set; }
        public byte[] Unknown1 { get; set; }
        public Size MapSize { get; set; }
        public byte[] Unknown2 { get; set; }
        public int Year { get; set; }
        public string Season { get; set; }
        public byte[] Unknown3 { get; set; }
        public int UnitCount { get; set; }
        public int TownCount { get; set; }
        public byte[] Unknown4 { get; set; }

        public Colony[] ColonyData { get; set; }

        public byte[] Unknown5 { get; set; }
        public Location Unknown6 { get; set; }
        public byte[] Unknown7 { get; set; }

        public List<Town> Towns { get; set; }
        public List<Unit> Units { get; set; }

        public int NextAddr { get; set; }

        public string GetSummary()
        {
            return $"Header: {Header}\r\n*** Uknown bytes: {Unknown1.Length}\r\nMap Size: {MapSize.Width}, {MapSize.Height}\r\n*** Uknown bytes: {Unknown2.Length}\r\n" +
                $"Date: {Season} {Year}\r\n*** Uknown bytes: {Unknown3.Length}\r\n\r\n" +
                $"Total Units/Towns: {UnitCount}/{TownCount}\r\n*** Uknown bytes: {Unknown4.Length}\r\n\r\n" +
                $"Colonies: {ColonyData[Nations.England]},\r\n          {ColonyData[Nations.France]},\r\n" +
                $"          {ColonyData[Nations.Spain]},\r\n          {ColonyData[Nations.Netherlands]}\r\n\r\n" +
                $"*** Uknown bytes: {Unknown5.Length}\r\nUknown Point: {Unknown6.X}, {Unknown6.Y}\r\n*** Uknown bytes: {Unknown7.Length}\r\n\r\n" +
                $"Towns: {string.Join(", ", Towns.Select(t => t.Name))}\r\nUnits:\r\n {string.Join("\r\n ", Units.Select(u => u.ToString()))}\r\n" +
                $"Next Byte Address: {NextAddr}";
        }
    }
}
