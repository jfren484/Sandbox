using System;
using System.Linq;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using ReadFile.JsonConverters;

namespace ReadFile
{
    public class Program
    {
        public static void Main(string[] args)
        {
            if (args.Length == 0 || args.Any(s => s == "-help" || s == "-?" || s == "/?"))
            {
                Console.WriteLine("ReadFile <filename> [-head]|[-towns]|[-units]|[-vill]|[-all]|[-map [<path-to-includes>]]");
                return;
            }

            var reader = new FileReader(args[0]);

            var saveData = reader.Read();

            if (args.Length == 1)
            {
                return;
            }

            var s = args[1];
            var a = (string)null;
            if (args.Length > 2)
            {
                a = args[2];
            }

            if (s == "-head" || s == "-all")
            {
                Console.WriteLine(saveData.GetHeaderSummary());
            }

            if (s == "-map")
            {
                Console.WriteLine(saveData.GetMap(a));
            }

            if (s == "-json")
            {
                Console.WriteLine(JsonConvert.SerializeObject(saveData, Formatting.Indented, new ByteConverter(), new ByteArrayConverter(), new StringEnumConverter()));
            }

            if (s == "-towns" || s == "-all")
            {
                Console.WriteLine(saveData.GetTownsSummary());
            }

            if (s == "-units" || s == "-all")
            {
                Console.WriteLine(saveData.GetUnitsSummary());
            }

            if (s == "-vill" || s == "-all")
            {
                Console.WriteLine(saveData.GetVillagesSummary());
            }
        }
    }
}
