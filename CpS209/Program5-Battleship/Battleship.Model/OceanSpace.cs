//-----------------------------------------------------------
//File:   OceanSpace.cs
//Desc:   Represents a single space on the grid, contains
//        contains the type of grid.
//----------------------------------------------------------- 

namespace Battleship.Model
{
    public class OceanSpace
    {
        public OceanSpaceType Type { get; set; }

        public OceanSpace(OceanSpaceType type)
        {
            Type = type;
        }

        public override string ToString()
        {
            switch (Type)
            {
                case OceanSpaceType.Ship:
                    return "X";
                case OceanSpaceType.Hit:
                    return "*";
                case OceanSpaceType.Miss:
                    return "O";
                case OceanSpaceType.Empty:
                default:
                    return "~";
            }
        }
    }
}
