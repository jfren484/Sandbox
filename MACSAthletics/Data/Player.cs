namespace MACSAthletics.Data
{
    public class Player : Person
    {
        public int Id { get; set; }

        public required bool IsActive { get; set; }

        public int? CurrentSchoolId { get; set; }

        public School? CurrentSchool { get; set; }

        public required ICollection<StatLine> StatLines { get; set; }
    }
}
