using System.ComponentModel.DataAnnotations;

namespace MACSAthletics.Data
{
    public class School : EntityModifiable
    {
        public int Id { get; set; }

        [MaxLength(100)]
        public required string Name { get; set; }

        [MaxLength(30)]
        public required string ShortName { get; set; }

        [MaxLength(30)]
        public required string Mascot { get; set; }

        public required ICollection<User> Users { get; set; }
    }
}
