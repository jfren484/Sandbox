//-----------------------------------------------------------
//File:   OceanSpaceType.cs
//Desc:   Holding space for the OceanSpaceType enumerator
//----------------------------------------------------------- 

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Battleship
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
