namespace Battleship.Model.Messaging
{
    public class AttackRequestMessage : RequestMessage
    {
        public const string MessageType = "Attack";

        public Location Location { get; set; }

        public AttackRequestMessage(Location location)
        {
            Location = location;
        }

        public override ResponseMessage Execute(Game game)
        {
            AttackResponseType result = game.IsEnded || Location.X < 0 || Location.X > game.Size || Location.Y < 0 || Location.Y > game.Size
                ? AttackResponseType.Invalid
                : game.AiGrid.Attack(Location);

            if (result == AttackResponseType.Dup || result == AttackResponseType.Invalid)
            {
                return new AttackResponseMessage(result);
            }

            Location playerLocation = game.Ai.DetermineNextAttack();
            game.PlayerGrid.Attack(playerLocation);
            return new AttackResponseMessage(result, playerLocation);
        }

        public static AttackRequestMessage Deserialize(string[] parts)
        {
            return new AttackRequestMessage(new Location(int.Parse(parts[2]), int.Parse(parts[1])));
        }
    }
}
