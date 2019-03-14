namespace Battleship.Model.Messaging
{
    public class AttackResponseMessage : ResponseMessage
    {
        public const string MessageType = "Attack";

        public AttackResponseType AttackResponseType { get; set; }
        public Location CounterAttackLocation { get; set; }

        public AttackResponseMessage(AttackResponseType attackResponseType, Location counterAttackLocation = null)
        {
            AttackResponseType = attackResponseType;
            CounterAttackLocation = counterAttackLocation;
        }

        public override string Serialize()
        {
            string counter = CounterAttackLocation == null ? null : $" {CounterAttackLocation.Y} {CounterAttackLocation.X}";

            string serialized = $"AttackResponse {AttackResponseType.ToString().ToLower()}{counter}\n";

            return serialized;
        }
    }
}
