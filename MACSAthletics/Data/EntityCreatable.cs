using System.ComponentModel.DataAnnotations.Schema;

namespace MACSAthletics.Data
{
    public abstract class EntityCreatable
    {
        public int CreatedByUserId { get; set; }

        public DateTime Created { get; set; }

        [ForeignKey(nameof(CreatedByUserId))]
        public User? CreatedByUser { get; set; }
    }
}
