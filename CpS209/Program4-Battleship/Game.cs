﻿//-----------------------------------------------------------
//File:   Game.cs
//Desc:   Declares the Ai and Player Grids and holds the current
//        Size and Cheat values.
//----------------------------------------------------------- 

namespace Battleship
{
    public class Game
    {
        public OceanGrid AiGrid { get; set; }
        public OceanGrid PlayerGrid { get; set; }
        public int Size { get; set; }

        public Game(int size)
        {
            Size = size;
            AiGrid = new OceanGrid(size);
            PlayerGrid = new OceanGrid(size);
        }
    }
}


