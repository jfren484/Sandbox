using System.Linq;

namespace ReadFile.Models
{
    public class Unit
    {
        public Location Location { get; set; }
        public int UnitType { get; set; }
        public int Nation { get; set; }
        public byte[] Unknown1 { get; set; }
        public int Orders { get; set; }
        public Location Destination { get; set; }
        public byte[] Unknown2 { get; set; }
        public int Tools { get; set; }
        public int Unknown3 { get; set; }
        public int Specialty { get; set; }
        public byte[] Unknown4 { get; set; }

        public override string ToString()
        {
            var specialty = UnitType >= UnitTypes.Treasure ? "" : $" ({StringValues.Specialties[Specialty]})";
            return $"{StringValues.UnitTypes[UnitType]}{specialty} of {StringValues.Nations[Nation]} at {Location.X}, {Location.Y} " +
                $"({StringValues.Orders[Orders]} {Unknown1.ByteArrayToString()}|{Unknown2.ByteArrayToString()}|{Unknown3}|{Unknown4.ByteArrayToString()})";
        }
    }
}
