//-----------------------------------------------------------
//File:   OceanSpaceType.cs
//Desc:   Holding space for the OceanSpaceType enumerator
//----------------------------------------------------------- 

namespace Battleship.Model
{
    public enum OceanSpaceType
    {
        Empty = 0,
        Ship,
        Miss,
        Hit,
        AlreadyHit
    }
}
