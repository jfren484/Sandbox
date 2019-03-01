//-----------------------------------------------------------
//File:   OceanGrid.cs
//Desc:   Contains methods and properties relating to Ships
//        and holds the states of the AI and Player Grids.
//----------------------------------------------------------- 

using System;

namespace Battleship
{
    public class OceanGrid
    {
        public int NumOfShips { get; } = 5;
        public int ShipsPlaced { get; set; } = 0;
        public int Size { get; set; }
        public static Random randomNumGenerator = new Random();
        public WaterSpace[,] BoardState { get; set; }

        public OceanGrid(int size)
        {
            BoardState = new WaterSpace[size, size];
            Size = size;
        }

        // Automatically places 5 different ships in  Grid
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

        // Grabs a random number for either the x or y value in PlaceShips()
        public int GetRandomCoordinate()
        {
            int result = randomNumGenerator.Next(0, Size);
            return result;
        }

        public bool Attack(int x, int y)
        {
            if (BoardState[x, y] == WaterSpace.Ship)
            {
                BoardState[x, y] = WaterSpace.Hit;
                return true;
            }

            if (BoardState[x, y] == WaterSpace.Empty)
            {
                BoardState[x, y] = WaterSpace.Miss;
            }

            return false;
        }
    }
}