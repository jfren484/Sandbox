//-----------------------------------------------------------
//File:   Game.cs
//Desc:   Declares the Ai and Player Grids and holds the
//        current Size and Cheat values.
//----------------------------------------------------------- 

using System.Text;

namespace Battleship.Model
{
    public class Game
    {
        public Ai Ai { get; set; }
        public OceanGrid AiGrid { get; set; }
        public OceanGrid PlayerGrid { get; set; }
        public int Size { get; set; }
        public bool IsCheatOn { get; set; }

        public bool IsEnded => PlayerGrid.ShipsPlaced == 0 || AiGrid.ShipsPlaced == 0;
        public string Winner => AiGrid.ShipsPlaced == 0 ? "human" : "computer";

        public Game(bool cheat, int size)
        {
            IsCheatOn = cheat;
            Size = size;
            AiGrid = new OceanGrid(size);
            PlayerGrid = new OceanGrid(size);
            Ai = new Ai(size);
        }

        public string Serialize()
        {
            StringBuilder sb = new StringBuilder();

            string status = IsEnded ? $"ended {Winner}" : "active";
            sb.AppendLine($"GameStateResponse {status}");

            PlayerGrid.Serialize(sb);

            sb.AppendLine("---");

            AiGrid.Serialize(sb);

            return sb.ToString();
        }

        public static Game CreateDemoState()
        {
            Game game = new Game(false, 10);

            game.PlayerGrid.BoardState[5, 0].Type = OceanSpaceType.Ship;
            game.PlayerGrid.BoardState[2, 1].Type = OceanSpaceType.Ship;
            game.PlayerGrid.BoardState[5, 1].Type = OceanSpaceType.Hit;
            game.PlayerGrid.BoardState[1, 2].Type = OceanSpaceType.Miss;
            game.PlayerGrid.BoardState[4, 4].Type = OceanSpaceType.Hit;
            game.PlayerGrid.BoardState[1, 5].Type = OceanSpaceType.Ship;
            game.PlayerGrid.ShipsPlaced = 3;

            game.AiGrid.BoardState[2, 2].Type = OceanSpaceType.Ship;
            game.AiGrid.BoardState[5, 2].Type = OceanSpaceType.Hit;
            game.AiGrid.BoardState[1, 3].Type = OceanSpaceType.Miss;
            game.AiGrid.BoardState[5, 4].Type = OceanSpaceType.Ship;
            game.AiGrid.BoardState[4, 6].Type = OceanSpaceType.Hit;
            game.AiGrid.BoardState[1, 7].Type = OceanSpaceType.Ship;
            game.AiGrid.ShipsPlaced = 3;

            return game;
        }
    }
}
