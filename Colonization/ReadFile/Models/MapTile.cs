using System.Linq;

namespace ReadFile.Models
{
    public class MapTile
    {
        public Location Coordinates { get; set; }
        public TerrainBase TerrainBase { get; set; }
        public TerrainFeature TerrainFeature { get; set; }
        public byte UnknownByte1 { get; set; }
        public int Nation { get; set; }
        public string NationName { get; set; }
        public byte DistinctBodyNumber { get; set; }
        public bool[] VisibleToNations { get; set; }
        public byte UnknownNibble2 { get; set; }

        public override string ToString()
        {
            var terBaseDesc = TerrainFeature.HasFlag(TerrainFeature.Elevation)
                ? StringValues.TerrainFeatures[(int)TerrainFeature]
                : TerrainBase == TerrainBase.Ocean && DistinctBodyNumber > 1
                    ? "Lake"
                    : StringValues.TerrainBases[(int)TerrainBase];

            var terFeatDesc = TerrainFeature == 0 || TerrainFeature.HasFlag(TerrainFeature.Elevation)
                ? string.Empty
                : $"&#13;({StringValues.TerrainFeatures[(int)TerrainFeature]})";

            var formatted = $"Locat: ({Coordinates.X}, {Coordinates.Y}) {DistinctBodyNumber}\r\n" +
                $"{NationName}\r\n" +
                $"({terBaseDesc}){terFeatDesc}\r\n" +
                $"Unknown1: {UnknownByte1:X2}\r\n" +
                $"VisibleTo: {string.Join(", ", VisibleToNations.Select(b => b))}\r\n" +
                $"Unknown2: {UnknownNibble2:X1}";

            return formatted.Replace("\r\n\r\n", "\r\n");
        }
    }
}
