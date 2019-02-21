using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Windows.Media;

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
        public enum WaterSpace { Empty = 0, Ship, Miss, HitShip, HitShipNowDestroyed, AlreadyDestroyed };
        public WaterSpace[,] BoardState { get; set; }

        public OceanGrid(int size)
        {
            BoardState = new WaterSpace[size, size];
            Size = size;
        }

        // Automatically places 5 different ships in Ai's Grid
        public void PlaceShips()
        {
            List<Ship> ships = new List<Ship>
            {
                new Ship(4, GetRandomBoolean()),
                new Ship(3, GetRandomBoolean()),
                new Ship(2, GetRandomBoolean()),
                new Ship(2, GetRandomBoolean()),
                new Ship(2, GetRandomBoolean())
            };

            while (ships.Count > 0)
            {
                int x = GetRandomCoordinate();
                int y = GetRandomCoordinate();

                if (DetermineIfShipFits(ships[0], x, y))
                {
                    PlaceShip(ships[0], x, y);
                    ships.RemoveAt(0);
                }
            }
        }

        public bool GetRandomBoolean()
        {
            return randomNumGenerator.Next(2) > 0;
        }

        // Grabs a random number for either the x or y value in PlaceShips()
        public int GetRandomCoordinate()
        {
            int result = randomNumGenerator.Next(0, Size);
            return result;
        }

        public bool DetermineIfShipFits(Ship ship, int x, int y)
        {
            if (ship.OrientationHorizontal)
            {
                for (int i = x; i < x + ship.Length; i++)
                {
                    if (i >= Size || BoardState[i, y] != OceanGrid.WaterSpace.Empty)
                    {
                        return false;
                    }
                }
            }
            else
            {
                for (int i = y; i < y + ship.Length; i++)
                {
                    if (i >= Size || BoardState[x, i] != OceanGrid.WaterSpace.Empty)
                    {
                        return false;
                    }
                }
            }

            return true;
        }

        public void PlaceShip(Ship ship, int x, int y)
        {
            if (ship.OrientationHorizontal)
            {
                for (int i = x; i < x + ship.Length; i++)
                {
                    BoardState[i, y] = WaterSpace.Ship;
                }
            }
            else
            {
                for (int i = y; i < y + ship.Length; i++)
                {
                    BoardState[x, i] = WaterSpace.Ship;
                }
            }

            ShipsPlaced++;
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
    }
}