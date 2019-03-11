//-----------------------------------------------------------
//File:   Game.cs
//Desc:   Declares the Ai and Player Grids and holds the
//        current Size and Cheat values.
//----------------------------------------------------------- 

namespace Battleship
{
    public class Game
    {
        public OceanGrid AiGrid { get; set; }
        public OceanGrid PlayerGrid { get; set; }
        public int Size { get; set; }
        public bool IsCheatOn { get; set; }
        public IObserver Observer { get; set; }
        public Game(bool cheat, int size, IObserver observer)
        {
            IsCheatOn = cheat;
            Size = size;
            AiGrid = new OceanGrid(observer, size);
            PlayerGrid = new OceanGrid(observer, size);
            Observer = observer;
        }
    }
}


