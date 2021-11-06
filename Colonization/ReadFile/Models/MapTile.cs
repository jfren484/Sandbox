using System.Linq;

namespace ReadFile.Models
{
    public class MapTile
    {
        public Location Coordinates { get; set; }
        public TerrainBase TerrainBase { get; set; }
        public TerrainFeature TerrainFeature { get; set; }
        public bool IsPlowed { get; set; }
        public bool HasRoad { get; set; }
        public bool IsOccupied { get; set; }
        public byte UnknownByte1 { get; set; }
        public Nation Nation { get; set; }
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
                : $"\r\n({StringValues.TerrainFeatures[(int)TerrainFeature]})";

            var roadDesc = HasRoad
                ? "\r\n(Road)"
                : string.Empty;

            var plowedDesc = IsPlowed
                ? "\r\n(Plowed)"
                : string.Empty;

            var formatted = $"Locat: ({Coordinates.X}, {Coordinates.Y}) {DistinctBodyNumber}\r\n" +
                $"{NationName}\r\n" +
                $"({terBaseDesc}){terFeatDesc}{roadDesc}{plowedDesc}\r\n" +
                $"Occupied: {IsOccupied}\r\n" +
                $"Unknown1: {UnknownByte1:X2}\r\n" +
                $"VisibleTo: {string.Join(", ", VisibleToNations.Select(b => b))}\r\n" +
                $"Unknown2: {UnknownNibble2:X1}";

            return formatted.Replace("\r\n\r\n", "\r\n");
        }
    }
}
