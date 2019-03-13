//-----------------------------------------------------------
//File:   OceanGrid.cs
//Desc:   Contains methods and properties relating to Ships
//        and holds the states of the AI and Player Grids.
//----------------------------------------------------------- 

using System;

namespace Battleship.Model
{
    public class OceanGrid
    {
        public int NumOfShips { get; set;  } = 5;
        public int ShipsPlaced { get; set; } = 0;
        public int Size { get; set; }
        public static Random randomNumGenerator = new Random();
        public Location LastAttackedLocation { get; set; }
        public OceanSpace[,] BoardState { get; set; }

        public OceanGrid(int size)
        {
            BoardState = new OceanSpace[size, size];
            for (var x = 0; x < size; x++)
            {
                for (var y = 0; y < size; y++)
                {
                    BoardState[x, y] = new OceanSpace(OceanSpaceType.Empty);
                }
            }

            Size = size;
        }

        // Automatically places 5 different ships in Grid
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

        // Determines whether the OceanSpace's Type in question is a Ship or Empty, and either changes the OceanSpaceType to either Hit or Miss.
        // Returns the OceanSpace.
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