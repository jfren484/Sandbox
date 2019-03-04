using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

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
