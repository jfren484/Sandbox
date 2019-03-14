namespace Battleship.Model.Messaging
{
    public class GameStateRequestMessage : RequestMessage
    {
        public const string MessageType = "GameState";

        public override ResponseMessage Execute(Game game)
        {
            return new GameStateResponseMessage(game);
        }
    }
}
