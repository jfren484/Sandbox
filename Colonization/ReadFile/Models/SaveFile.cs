using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace ReadFile.Models
{
    public class SaveFile
    {
        public string Header { get; set; }
        public byte[] Unknown1 { get; set; }
        public Size MapSize { get; set; }
        public byte[] Unknown2 { get; set; }
        public GameOptions GameOptions { get; set; }
        public ColonyReportOptions ColonyReportOptions { get; set; }
        public SoundOptions SoundOptions { get; set; }
        public byte[] Unknown3 { get; set; }
        public int Year { get; set; }
        public Season Season { get; set; }
        public byte[] Unknown4 { get; set; }
        public int IndianVillageCount { get; set; }
        public int UnitCount { get; set; }
        public int TownCount { get; set; }
        public byte[] Unknown5 { get; set; }
        public Difficulty Difficulty { get; set; }
        public byte[] Unknown6 { get; set; }
        public int ActiveUnitIndex { get; set; }
        public byte[] Unknown7 { get; set; }

        // Byte 0, bit 0 - Discovery of the New World
        // Byte 0, bit 2 - Meet the Natives
        // Byte 0, bit 6 - Entering Indian village
        public byte[] DiscoveryFlags { get; set; }

        public Colony[] ColonyData { get; set; }

        public byte[] Unknown8 { get; set; }
        public Location Unknown9 { get; set; }
        public byte[] Unknown10 { get; set; }

        public List<Town> Towns { get; set; }
        public List<Unit> Units { get; set; }

        public byte Unknown11 { get; set; }
        public int TaxRate { get; set; }
        public byte[] Unknown12 { get; set; }
        public int Gold { get; set; }
        public byte[] Unknown13 { get; set; }

        public List<Village> Villages { get; set; }

        public byte[] Unknown14 { get; set; }

        public MapTile[] Map { get; set; }

        public int NextAddr { get; set; }

        public string GetHeaderSummary()
        {
            return $"Header: {Header}\r\n{Unknown1.ByteArrayToString()}\r\nMap Size: {MapSize.Width}, {MapSize.Height}\r\n{Unknown2.ByteArrayToString()}\r\n" +
                $"Date: {Season} {Year}\r\n{Unknown4.ByteArrayToString()}\r\nActive Unit: {ActiveUnitIndex:X4}\r\n{Unknown6.ByteArrayToString()}\r\n\r\n" +
                $"Total Villages/Units/Towns: {IndianVillageCount}/{UnitCount}/{TownCount}\r\n\r\n" +
                $"{Unknown6.ByteArrayToString()}\r\nDifficulty: {Difficulty}\r\n{Unknown7.ByteArrayToString()}\r\n\r\n" +
                $"Colonies: {ColonyData[(int)Nation.England]},\r\n          {ColonyData[(int)Nation.France]},\r\n" +
                $"          {ColonyData[(int)Nation.Spain]},\r\n          {ColonyData[(int)Nation.Netherlands]}\r\n\r\n" +
                $"{Unknown8.ByteArrayToString()}\r\nUknown Point: {Unknown9.X}, {Unknown9.Y}\r\n{Unknown10.ByteArrayToString()}\r\n{Unknown11}\r\n" +
                $"Gold, Tax: {Gold:n0}, {TaxRate}%\r\n" +
                $"{Unknown12.ByteArrayToString()}\r\n" +
                $"Next Byte Address: {NextAddr:X4}\r\n" +
                string.Join("\r\n", Map.GroupBy(m => m.UnknownByte1).OrderBy(grp => grp.Key).Select(grp => $"{grp.Key:X2}: {grp.Count()}")) +
                //string.Join("\r\n", Map.GroupBy(m => m.UnknownNibble2).OrderBy(grp => grp.Key).Select(grp => $"{grp.Key:X}: {grp.Count()}")) +
                //string.Join("\r\n", Map.Where(m => m.UnknownByte2 >= 0x10 && m.UnknownByte2 < 0x20).Select(m => m)) +
                "";
        }

        public string GetMap(string pathToIncludes)
        {
            var terrainFeatures = new[]
            {
                "",
                "ter-feat-hills",
                "ter-feat-minor-river",
                "ter-feat-hills ter-feat-minor-river",
                "",
                "ter-feat-mountains",
                "ter-feat-major-river",
                "ter-feat-mountains ter-feat-major-river"
            };

            var rows = Map.Select((mt, i) => new { MapTile = mt, Index = i })
                    .GroupBy(x => x.Index / MapSize.Width)
                    .Select(grp =>
                    {
                        var cells = grp.Select(x =>
                        {
                            var terBase = x.MapTile.TerrainBase.ToString().ToLower();
                            var terFeat = terrainFeatures[(int)x.MapTile.TerrainFeature];
                            if (terFeat.Length > 0)
                            {
                                terFeat = $"<div class=\"ter-feat {terFeat}\"></div>";
                            }

                            return $"<div title=\"{x.MapTile.ToString().Replace("\r\n", "&#13;")}\" " +
                                $"class=\"map-cell ter-base-{terBase}\">{terFeat}</div>";
                        });

                        return $"<div class=\"map-row\">\r\n\t\t\t\t\t{string.Join("\r\n\t\t\t\t\t", cells)}\r\n\t\t\t\t</div>";
                    });

            return "<!doctype html>\r\n" +
                "<html>\r\n" +
                "\t<head>\r\n" +
                "\t\t<title>Colonization</title>\r\n" +
                "\t\t<meta charset=\"utf - 8\">\r\n" +
                "\t\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n" +
                "\t\t<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n" +
                $"\t\t<link href=\"{Path.Combine(pathToIncludes, "Colonization.css")}\" rel=\"stylesheet\"></link></style>\r\n" +
                "\t</head>\r\n" +
                "\t<body>\r\n" +
                "\t\t<div class=\"container\">\r\n" +
                "\t\t\t<div class=\"info\">&nbsp;\r\n" +
                "\t\t\t</div>\r\n" +
                "\t\t</div>\r\n" +
                "\t\t<div class=\"container\">\r\n" +
                $"\t\t\t<div style=\"width: {MapSize.Width * 40}px\" class=\"map\">\r\n" +
                $"\t\t\t\t{string.Join("\r\n\t\t\t\t", rows)}\r\n" +
                "\t\t\t</div>\r\n" +
                "\t\t</div>\r\n" +
                "\t\t<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js\"></script>\r\n" +
                "\t\t<script src=\"https://code.jquery.com/jquery-3.6.0.slim.min.js\"></script>\r\n" +
                $"\t\t<script src=\"{Path.Combine(pathToIncludes, "Colonization.js")}\"></script>\r\n" +
                "\t</body>\r\n" +
                "</html>";
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
