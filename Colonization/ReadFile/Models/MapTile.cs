namespace ReadFile.Models
{
    public class MapTile
    {
        public TerrainBase TerrainBase { get; set; }
        public TerrainFeature TerrainFeature { get; set; }
        public byte UnknownByte1 { get; set; }
        public int Nation { get; set; }
        public byte DistinctBodyNumber { get; set; }
        public byte UnknownByte2 { get; set; }
    }
}
