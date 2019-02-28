//-----------------------------------------------------------
//File:   OceanGrid.cs
//Desc:   Contains methods and properties relating to Ships
//        and holds the states of the AI and Player Grids.
//----------------------------------------------------------- 

using System;
using System.Collections.Generic;
using System.Diagnostics;

namespace Battleship
{
    public class OceanGrid
    {
        private readonly int numOfShips = 5;
        private int shipsPlaced = 0;
        public int NumOfShips { get { return numOfShips; } }
        public int ShipsPlaced { get { return shipsPlaced; } set { shipsPlaced = value; } }
        public int Size { get; set; }
        public static Random randomNumGenerator = new Random();
        public enum WaterSpace { Empty = 0, Ship, Miss, HitShipNowDestroyed, AlreadyDestroyed};
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

        // 90% - Writes the current Grid State of the Player to the Debugging Output Window
        public void PlayerGridState()
        {
            Debug.WriteLine("Board:");
            string temp = "";
            for (int y = 0; y < Size; y++)
            {
                for (int x = 0; x < Size; x++)
                {
                    if (BoardState[x, y] == WaterSpace.Ship)
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

        //// 100% Program 3 - Tests to see if the location the user chose to place the ship in will fit the ship
        //public bool DetermineIfShipFits(Ship ship, int x, int y)
        //{
        //    if (ship.OrientationHorizontal) // Testing Horizontal Placement
        //    {
        //        for (int i = x; i < (x + ship.Length); i++)
        //        {
        //            if (i >= Size)
        //            {
        //                return false;
        //            }
        //            else if (BoardState[i, y] != WaterSpace.Empty)
        //            {
        //                return false;
        //            }
        //        }
        //    }
        //    else // Testing Vertical Placement
        //    {
        //        for (int i = y; i < (y + ship.Length); i++)
        //        {
        //            if (i >= Size)
        //            {
        //                return false;
        //            }
        //            else if (BoardState[x, i] != WaterSpace.Empty)
        //            {
        //                return false;
        //            }
        //        }
        //    }
        //    return true;
        //}

        //// 100% Program 3 - Places the ship into the grid
        //public void PlaceShip(Ship ship, int x, int y)
        //{

        //    if (ship.OrientationHorizontal)
        //    {
        //        for (int i = x; i < (x + ship.Length); i++)
        //        {
        //            BoardState[x, y] = WaterSpace.Ship;
        //        }
        //    }
        //    else
        //    {
        //        for (int i = y; i < (y + ship.Length); i++)
        //        {
        //            BoardState[x, y] = WaterSpace.Ship;
        //        }
        //    }
        //    ShipsPlaced++;
        //}
    }
}