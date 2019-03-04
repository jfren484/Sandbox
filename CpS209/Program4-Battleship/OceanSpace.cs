namespace Battleship
{
    public class OceanSpace
    {
        private IGameObserver _observer;
        private OceanSpaceType _oceanSpaceType;

        public OceanSpaceType OceanSpaceType
        {
            get => _oceanSpaceType;
            set
            {
                _oceanSpaceType = value;
                _observer.NotifySpaceChanged();
            }
        }

        public OceanSpace(IGameObserver observer, OceanSpaceType oceanSpaceType)
        {
            _observer = observer;
            _oceanSpaceType = oceanSpaceType;
        }
    }
}
