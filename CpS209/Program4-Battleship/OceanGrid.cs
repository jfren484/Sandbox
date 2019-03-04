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
        public int NumOfShips { get; set;  } = 5;
        public int ShipsPlaced { get; set; } = 0;
        public int Size { get; set; }
        public static Random randomNumGenerator = new Random();
        public Location lastAttackedLocation { get; set; }
        //public enum WaterSpace { Empty = 0, Ship, Miss, Hit, AlreadyHit};
        public OceanSpace[,] BoardState { get; set; }

        public OceanGrid(IObserver observer, int size)
        {
            BoardState = new OceanSpace[size, size];
            for (var x = 0; x < size; x++)
            {
                for (var y = 0; y < size; y++)
                {
                    BoardState[x, y] = new OceanSpace(observer, OceanSpaceType.Empty);
                }
            }

            Size = size;
        }

        // Automatically places 5 different ships in  Grid
        public void AutoPlaceShips()
        {
            while (ShipsPlaced < NumOfShips)
            {
                int x = GetRandomCoordinate();
                int y = GetRandomCoordinate();

                if (BoardState[x, y].Type != OceanSpaceType.Ship)
                {
                    BoardState[x, y].Type = OceanSpaceType.Ship;
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
                    if (BoardState[x, y].Type == OceanSpaceType.Ship)
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

        public OceanSpace Attack(Location location)
        {
            if (BoardState[location.X, location.Y].Type == OceanSpaceType.Ship)
            {
                BoardState[location.X, location.Y].Type = OceanSpaceType.Hit;
            }

            if (BoardState[location.X, location.Y].Type == OceanSpaceType.Empty)
            {
                BoardState[location.X, location.Y].Type = OceanSpaceType.Miss;
                
            }

            return BoardState[location.X, location.Y];
        }
    }
}