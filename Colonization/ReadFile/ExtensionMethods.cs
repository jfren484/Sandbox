using System.Linq;

namespace ReadFile
{
    public static class ExtensionMethods
    {
        public static string ByteArrayToString(this byte[] bytes)
        {
            return string.Join(",", bytes.Select(b => b.ToString("X2")));
        }
    }
}
