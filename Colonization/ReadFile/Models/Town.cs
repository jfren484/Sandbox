namespace ReadFile.Models
{
    public class Town
    {
        public Location Location { get; set; }
        public string Name { get; set; }
        public byte[] Unknown1 { get; set; }
        public int ConstructionProgress { get; set; }
        public int ConstructionTarget { get; set; }
        public byte[] Unknown2 { get; set; }
        public int[] Cargo { get; set; }
        public byte[] Unknown3 { get; set; }
    }
}
