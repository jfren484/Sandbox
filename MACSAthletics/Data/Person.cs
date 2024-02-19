using System.ComponentModel.DataAnnotations;

namespace MACSAthletics.Data
{
    public abstract class Person : EntityModifiable
    {
        [MaxLength(30)]
        public required string LastName { get; set; }

        [MaxLength(30)]
        public required string FirstName { get; set; }

        public string FullName => $"{FirstName} {LastName}";
    }
}
