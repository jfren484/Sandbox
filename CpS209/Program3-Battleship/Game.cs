namespace Battleship
{
    public class Game
    {
        public OceanGrid AiGrid { get; set; }
        public OceanGrid PlayerGrid { get; set; }
        public int Size { get; set; }
        public bool IsCheatOn { get; set; }
        public Game(bool cheat, int size)
        {
            IsCheatOn = cheat;
            Size = size;
            AiGrid = new OceanGrid(size);
            PlayerGrid = new OceanGrid(size);
        }
    }
}