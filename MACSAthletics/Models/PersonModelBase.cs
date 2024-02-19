using System.ComponentModel.DataAnnotations;

namespace MACSAthletics.Models
{
    public abstract class PersonModelBase : ModelBase
    {
        [Required]
        public string? LastName { get; set; }

        [Required]
        public string? FirstName { get; set; }

        public string FullName => $"{FirstName} {LastName}";
    }
}
