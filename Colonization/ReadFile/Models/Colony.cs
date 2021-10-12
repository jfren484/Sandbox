using System.Linq;

namespace ReadFile.Models
{
    public class Colony
    {
        public string Leader { get; set; }
        public string Name { get; set; }
        public byte[] ExtraData { get; set; }

        public override string ToString()
        {
            return $"{Leader} of {Name} ({string.Join(", ", ExtraData.Select(b => b.ToString("X2")))})";
        }
    }
}
