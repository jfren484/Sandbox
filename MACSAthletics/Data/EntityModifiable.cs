using System.ComponentModel.DataAnnotations.Schema;

namespace MACSAthletics.Data
{
    public abstract class EntityModifiable : EntityCreatable
    {
        public int? ModifiedByUserId { get; set; }

        public DateTime? Modified { get; set; }

        [ForeignKey(nameof(ModifiedByUserId))]
        public User? ModifiedByUser { get; set; }
    }
}
