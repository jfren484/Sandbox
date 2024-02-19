namespace MACSAthletics.Data
{
    public class GameParticipant : EntityModifiable
    {
        public required int Id { get; set; }

        public required int GameId { get; set; }

        public required int SchoolId { get; set; }

        public required bool IsHost { get; set; }

        public int? Score { get; set; }

        public required Game Game { get; set; }
        public required School School { get; set; }

        public required ICollection<StatLine> StatLines { get; set; }

        public GameParticipant Opponent
        {
            get
            {
                return Game.GameParticipants.Single(gp => gp.Id != Id);
            }
        }
    }
}