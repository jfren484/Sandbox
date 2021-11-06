namespace ReadFile.Models
{
    public class Unit
    {
        public Location Location { get; set; }
        public UnitType UnitType { get; set; }
        public Nation Nation { get; set; }
        public byte[] Unknown1 { get; set; }
        public Orders Orders { get; set; }
        public Location Destination { get; set; }
        public byte[] Unknown2 { get; set; }
        public int Tools { get; set; }
        public byte Unknown3 { get; set; }
        public Specialty Specialty { get; set; }
        public byte[] Unknown4 { get; set; }

        public override string ToString()
        {
            var specialty = UnitType >= UnitType.Treasure ? "" : $" ({StringValues.Specialties[(int)Specialty]})";
            return $"{StringValues.UnitTypes[(int)UnitType]}{specialty} of {Nation} at {Location.X}, {Location.Y} " +
                $"({StringValues.Orders[(int)Orders]} {Unknown1.ByteArrayToString()}|{Unknown2.ByteArrayToString()}|{Unknown3}|{Unknown4.ByteArrayToString()})";
        }
    }
}
