using System.Collections.Generic;
using System.Linq;

namespace ReadFile.Models
{
    public class Town
    {
        public Location Location { get; set; }
        public string Name { get; set; }
        public Nation Nation { get; set; }
        public byte[] Unknown1 { get; set; }
        public List<TownColonist> Colonists { get; set; }
        public byte[] ColonistTiles { get; set; }
        public byte[] Unknown2 { get; set; }
        public bool[] Buildings { get; set; }
        public byte[] Unknown3 { get; set; }
        public int ConstructionProgress { get; set; }
        public ConstructionTarget ConstructionTarget { get; set; }
        public byte[] Unknown4 { get; set; }
        public int[] Cargo { get; set; }
        public int PopulationBadge { get; set; }
        public byte[] Unknown5 { get; set; }
        public int LibertyBellsGenerated { get; set; }
        public byte[] Unknown6 { get; set; }

        public override string ToString()
        {
            return $"{Name,-23} of {Nation,-11} at {Location.X,2}, {Location.Y,2}; {Colonists.Count,2} Colonists ({PopulationBadge} last reported)\r\n" +
                $"     Buildings: {string.Join("", Buildings.Select(b => b ? 1 : 0))}\r\n" +
                $"     {Unknown1.ByteArrayToString()} | {Unknown2.ByteArrayToString()} | {Unknown3.ByteArrayToString()} | {Unknown4.ByteArrayToString()} | " +
                $"{Unknown5.ByteArrayToString()} | {Unknown6.ByteArrayToString()})";
        }
    }
}
