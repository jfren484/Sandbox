namespace ReadFile.Models
{
    public class Village
    {
        public Location Location { get; set; }
        public int Nation { get; set; }
        public byte[] Unknown1 { get; set; }
        public int MissionNation { get; set; }
        public byte[] Unknown2 { get; set; }

        public override string ToString()
        {
            var mission = MissionNation < 0 ? "" : $" {StringValues.NationAdjectives[MissionNation]} Mission";
            return $"{StringValues.Nations[Nation],-11} at {Location.X,2}, {Location.Y,2} ({Unknown1.ByteArrayToString()}|{Unknown2.ByteArrayToString()}){mission}";
        }
    }
}
