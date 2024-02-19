namespace MACSAthletics.Data
{
    public class StatLine : EntityModifiable
    {
        public required int Id { get; set; }

        public required int PlayerId { get; set; }

        public required int GameParticipantId { get; set; }

        public required int Order { get; set; }

        public required int Points { get; set; }

        public required int Assists { get; set; }

        public required int Rebounds { get; set; }

        public required int Blocks { get; set; }

        public required int Steals { get; set; }

        public required int Turnovers { get; set; }

        public required int PersonalFouls { get; set; }

        public required Player Player { get; set; }
        public required GameParticipant GameParticipant { get; set; }
    }
}