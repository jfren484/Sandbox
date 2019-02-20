using System;

namespace Battleship
{
    class OceanGrid
    {
        public int ShipsPlaced { get; set; }
        public static Random randomNumGenerator = new Random();
        public enum WaterSpace { Empty = 0, Ship, Miss, HitShip, HitShipNowDestroyed, AlreadyDestroyed};

        public readonly WaterSpace[,] BoardState; 
        public int NumOfShips { get; set; }

        public OceanGrid(int numOfShips)
        {
            NumOfShips = numOfShips;
            BoardState = new WaterSpace[Game.Size, Game.Size];
        }

        public void PlaceShips()
        {
            while (ShipsPlaced < NumOfShips)
            {
                int x = GetRandomCoordinate();
                int y = GetRandomCoordinate();

                if (BoardState[x, y] != WaterSpace.Ship)
                {
                    BoardState[x, y] = WaterSpace.Ship;
                    ShipsPlaced++;
                }
            }
        }

        public int GetRandomCoordinate()
        {
            int result = randomNumGenerator.Next(0, Game.Size-1);
            return result;
        }

        //public void PlayerGridState() // 90%
        //{
        //    Debug.WriteLine("Board:");
        //    Debug.WriteLine();
        //}
    }
}