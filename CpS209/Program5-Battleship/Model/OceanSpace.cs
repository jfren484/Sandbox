//-----------------------------------------------------------
//File:   OceanSpace.cs
//Desc:   Represents a single space on the grid, contains
//        contains the type of grid.
//----------------------------------------------------------- 

namespace Battleship
{
    public class OceanSpace
    {
        private IObserver _observer;
        private OceanSpaceType _type;
        public OceanSpaceType Type { get { return _type; } set { _type = value; _observer.NotifySpaceChanged(); } }

        public OceanSpace(IObserver observer, OceanSpaceType type)
        {
            _observer = observer;
            _type = type;
        }
    }
}
