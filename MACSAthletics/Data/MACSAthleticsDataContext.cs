using Microsoft.EntityFrameworkCore;

namespace MACSAthletics.Data
{
    public class MACSAthleticsDataContext : DbContext
    {
        public const int SystemUserId = 1;

        public DbSet<Game> Games { get; set; }
        public DbSet<GameParticipant> GameParticipants { get; set; }
        public DbSet<Player> Players { get; set; }
        public DbSet<School> Schools { get; set; }
        public DbSet<StatLine> StatLines { get; set; }
        public DbSet<User> Users { get; set; }

        public MACSAthleticsDataContext(DbContextOptions<MACSAthleticsDataContext> options) : base(options) { }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            foreach (var relationship in modelBuilder.Model.GetEntityTypes().SelectMany(e => e.GetForeignKeys()))
            {
                relationship.DeleteBehavior = DeleteBehavior.Restrict;
            }

            modelBuilder.Entity<User>()
                .HasIndex(u => u.EmailAddress)
                .IsUnique();

            modelBuilder.Entity<User>()
                .HasOne(u => u.School)
                .WithMany(s => s.Users);
        }

        public override int SaveChanges()
        {
            throw new NotSupportedException();
        }

        public int SaveChanges(int userId)
        {
            foreach (var entry in ChangeTracker.Entries<EntityCreatable>().Where(e => e.State == EntityState.Added))
            {
                entry.Entity.Created = CentralTimeZone.Now;
                entry.Entity.CreatedByUserId = userId;
            }

            foreach (var entry in ChangeTracker.Entries<EntityModifiable>().Where(e => e.State == EntityState.Modified))
            {
                entry.Entity.Modified = CentralTimeZone.Now;
                entry.Entity.ModifiedByUserId = userId;
            }

            return base.SaveChanges();

            /* TODO
            try
            {
                return base.SaveChanges();
            }
            catch (DbUpdateException ex)
            {
                var errors = ex.EntityValidationErrors
                               .SelectMany(err => err.ValidationErrors)
                               .Select(err => $"{err.PropertyName}: {err.ErrorMessage}");

                throw new Exception($"DbEntityValidationException: {string.Join(Environment.NewLine, errors)}");
            }
            */
        }
    }
}
