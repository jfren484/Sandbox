//-----------------------------------------------------------
//File:   OceanGrid.cs
//Desc:   Contains methods and properties relating to Ships
//        and holds the states of the AI and Player Grids.
//----------------------------------------------------------- 

using System;
using System.Diagnostics;

namespace Battleship
{
    public class OceanGrid
    {
        public int NumOfShips { get; set;  } = 5;
        public int ShipsPlaced { get; set; } = 0;
        public int Size { get; set; }
        public static Random randomNumGenerator = new Random();
        public OceanSpace[,] BoardState { get; set; }

        public OceanGrid(int size)
        {
            BoardState = new OceanSpace[size, size];
            Size = size;
        }

        // Automatically places 5 different ships in  Grid
        public void AutoPlaceShips()
        {
            while (ShipsPlaced < NumOfShips)
            {
                int x = GetRandomCoordinate();
                int y = GetRandomCoordinate();

                if (BoardState[x, y].OceanSpaceType != OceanSpaceType.Ship)
                {
                    BoardState[x, y].OceanSpaceType = OceanSpaceType.Ship;
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

        // 90% - Writes the current Grid State of the Player to the Debugging Output Window
        public void PlayerGridState()
        {
            Debug.WriteLine("Board:");
            string temp = "";
            for (int y = 0; y < Size; y++)
            {
                for (int x = 0; x < Size; x++)
                {
                    if (BoardState[x, y].OceanSpaceType == OceanSpaceType.Ship)
                    {
                        temp += 'n';
                        
                    }
                    else
                    {
                        temp += '~';
                    }
                }
                Debug.WriteLine(temp);
                temp = "";
            }
        }

        public OceanSpaceType Attack(Location location)
        {
            if (BoardState[location.X, location.Y].OceanSpaceType == OceanSpaceType.Ship)
            {
                BoardState[location.X, location.Y].OceanSpaceType = OceanSpaceType.Hit;
            }

            if (BoardState[location.X, location.Y].OceanSpaceType == OceanSpaceType.Empty)
            {
                BoardState[location.X, location.Y].OceanSpaceType = OceanSpaceType.Miss;
            }

            return BoardState[location.X, location.Y].OceanSpaceType;
        }
    }
}