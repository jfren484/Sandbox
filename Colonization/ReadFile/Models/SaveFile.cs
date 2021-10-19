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
        public int IndianVillageCount { get; set; }
        public int UnitCount { get; set; }
        public int TownCount { get; set; }
        public byte[] Unknown4 { get; set; }
        public Difficulty Difficulty { get; set; }
        public byte[] Unknown5 { get; set; }

        public Colony[] ColonyData { get; set; }

        public byte[] Unknown6 { get; set; }
        public Location Unknown7 { get; set; }
        public byte[] Unknown8 { get; set; }

        public List<Town> Towns { get; set; }
        public List<Unit> Units { get; set; }

        public byte Unknown9 { get; set; }
        public int TaxRate { get; set; }
        public byte[] Unknown10 { get; set; }
        public int Gold { get; set; }
        public byte[] Unknown11 { get; set; }

        public List<Village> Villages { get; set; }

        public byte[] Unknown12 { get; set; }

        public MapTile[] Map { get; set; }

        public int NextAddr { get; set; }

        public string GetHeaderSummary()
        {
            return $"Header: {Header}\r\n{Unknown1.ByteArrayToString()}\r\nMap Size: {MapSize.Width}, {MapSize.Height}\r\n{Unknown2.ByteArrayToString()}\r\n" +
                $"Date: {Season} {Year}\r\n{Unknown3.ByteArrayToString()}\r\n\r\n" +
                $"Total Villages/Units/Towns: {IndianVillageCount}/{UnitCount}/{TownCount}\r\n\r\n" +
                $"{Unknown4.ByteArrayToString()}\r\nDifficulty: {Difficulty}\r\n{Unknown5.ByteArrayToString()}\r\n\r\n" +
                $"Colonies: {ColonyData[Nations.England]},\r\n          {ColonyData[Nations.France]},\r\n" +
                $"          {ColonyData[Nations.Spain]},\r\n          {ColonyData[Nations.Netherlands]}\r\n\r\n" +
                $"{Unknown6.ByteArrayToString()}\r\nUknown Point: {Unknown7.X}, {Unknown7.Y}\r\n{Unknown8.ByteArrayToString()}\r\n{Unknown9}\r\n" +
                $"Gold, Tax: {Gold:n0}, {TaxRate}%\r\n" +
                $"{Unknown10.ByteArrayToString()}\r\n" +
                //$"{Unknown11.ByteArrayToString()}\r\n" +
                $"Next Byte Address: {NextAddr:X4}";
        }

        public string GetMap()
        {
            var terrainFeatures = new[]
            {
                "",
                " ter-feat-hills",
                " ter-feat-minor-river",
                " ter-feat-hills ter-feat-minor-river",
                "",
                " ter-feat-mountains",
                " ter-feat-major-river",
                " ter-feat-mountains ter-feat-major-river"
            };

            var rows = Map.Select((mt, i) => new { MapTile = mt, Index = i })
                    .GroupBy(x => x.Index / MapSize.Width)
                    .Select(grp =>
                    {
                        var cells = grp.Select(x =>
                        {
                            var terBase = x.MapTile.TerrainBase.ToString().ToLower();
                            var terFeat = terrainFeatures[(int)x.MapTile.TerrainFeature];

                            return $"<div data-x=\"{x.Index % MapSize.Width}\" data-y=\"{x.Index / MapSize.Width}\" class=\"map-cell ter-base-{terBase}{terFeat}\"></div>";
                        });

                        return $"<div class=\"map-row\">\r\n\t\t\t\t{string.Join("\r\n\t\t\t\t", cells)}\r\n\t\t\t</div>";
                    });

            return $"<html>\r\n\t<head>\r\n\t\t<link href=\"C:\\Users\\jay\\source\\repos\\Sandbox\\Colonization\\ReadFile\\colonization.css\" rel=\"stylesheet\"></link></style>\r\n\t</head>\r\n" +
                $"\t<body>\r\n\t\t<div class=\"map\">\r\n\t\t\t{string.Join("\r\n\t\t\t", rows)}\r\n\t\t</div>\r\n\t</body>\r\n</html>";
        }

        public string GetTownsSummary()
        {
            return $"Towns:\r\n{string.Join("\r\n", Towns)}";
        }

        public string GetUnitsSummary()
        {
            return $"Units:\r\n{string.Join("\r\n", Units.Select(u => u.ToString()))}";
        }

        public string GetVillagesSummary()
        {
            return $"Villages:\r\n{string.Join("\r\n", Villages.Select(v => v.ToString()))}";
        }
    }
}
