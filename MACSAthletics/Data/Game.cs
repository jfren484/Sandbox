using System.ComponentModel.DataAnnotations;

namespace MACSAthletics.Data
{
    public class Game : EntityModifiable
    {
        public required int Id { get; set; }

        public required DateTime Date { get; set; }

        [MaxLength(200)]
        public string? Location { get; set; }

        public required ICollection<GameParticipant> GameParticipants { get; set; }

        //public ICollection<GameResultReport> GameResultReports { get; set; }

        public GameParticipant AwayParticipant
        {
            get
            {
                return GameParticipants.Single(gp => !gp.IsHost);
            }
        }

        public GameParticipant HomeParticipant
        {
            get
            {
                return GameParticipants.Single(gp => gp.IsHost);
            }
        }
    }
}