namespace ReadFile.Models
{
    public class Colony
    {
        public string Leader { get; set; }
        public string Name { get; set; }
        public byte Unknown1 { get; set; }
        public PlayedBy PlayedBy { get; set; }
        public byte[] Unknown2 { get; set; }

        public override string ToString()
        {
            return $"{Leader} of {Name} ({PlayedBy}, {Unknown1:X2}|{string.Join(", ", Unknown2.ByteArrayToString())})";
        }
    }
}
