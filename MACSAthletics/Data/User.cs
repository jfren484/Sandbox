using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace MACSAthletics.Data
{
    public class User : Person
    {
        public int Id { get; set; }

        [Required]
        [MaxLength(50)]
        public required string EmailAddress { get; set; }

        public int? SchoolId { get; set; }

        [ForeignKey(nameof(SchoolId))]
        public School? School { get; set; }

        public required bool IsConfirmed { get; set; }
    }
}
