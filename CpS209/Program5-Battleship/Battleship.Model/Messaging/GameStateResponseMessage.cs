using System.Collections.Generic;
using System.Text;

namespace Battleship.Model.Messaging
{
    public class GameStateResponseMessage : ResponseMessage
    {
        private readonly Dictionary<OceanSpaceType, string> OceanSpaceValues = new Dictionary<OceanSpaceType, string>
        {
            { OceanSpaceType.Empty, "~" },
            { OceanSpaceType.Ship, "X" },
            { OceanSpaceType.Hit, "*" },
            { OceanSpaceType.Miss, "O" }
        };

        public const string MessageType = "GameState";

        public Game Game { get; set; }

        public GameStateResponseMessage(Game game)
        {
            Game = game;
        }

        public override string Serialize()
        {
            StringBuilder sb = new StringBuilder();

            string status = Game.IsEnded ? $"ended {Game.Winner}" : "active";
            sb.AppendLine($"GameStateResponse {status}");

            SerializeGrid(Game.PlayerGrid, sb);

            sb.AppendLine("---");

            SerializeGrid(Game.AiGrid, sb);

            return sb.ToString();
        }

        private void SerializeGrid(OceanGrid grid, StringBuilder sb)
        {
            for (var y = 0; y < grid.Size; y++)
            {
                for (var x = 0; x < grid.Size; x++)
                {
                    sb.Append(OceanSpaceValues[grid.BoardState[x, y].Type]);
                }

                sb.AppendLine();
            }
        }
    }
}
