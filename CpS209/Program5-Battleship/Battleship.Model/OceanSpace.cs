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
    }
}
