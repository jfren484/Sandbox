using System;

namespace Battleship.Model.Messaging
{
    public abstract class RequestMessage
    {
        public abstract ResponseMessage Execute(Game game);

        public static RequestMessage Deserialize(string msg)
        {
            string[] parts = msg.Split(' ');
            string msgType = parts[0];
            switch (msgType)
            {
                case GameStateRequestMessage.MessageType:
                    return new GameStateRequestMessage();
                case AttackRequestMessage.MessageType:
                    return AttackRequestMessage.Deserialize(parts);
                default:
                    throw new Exception("Unknown response message type " + msgType);
            }
        }
    }
}
