using System;
using System.Linq;

namespace ReadFile
{
    public class Program
    {
        public static void Main(string[] args)
        {
            if (args.Length == 0 || args.Any(s => s == "-help" || s == "-?" || s == "/?"))
            {
                Console.WriteLine("ReadFile <filename> [-head] [-map] [-towns] [-units] [-vill] [-all]");
                return;
            }

            var reader = new FileReader(args[0]);

            var saveData = reader.Read();

            if (args.Any(s => s == "-head" || s == "-all"))
            {
                Console.WriteLine(saveData.GetHeaderSummary());
            }

            if (args.Any(s => s == "-map"))
            {
                Console.WriteLine(saveData.GetMap());
            }

            if (args.Any(s => s == "-towns" || s == "-all"))
            {
                Console.WriteLine(saveData.GetTownsSummary());
            }

            if (args.Any(s => s == "-units" || s == "-all"))
            {
                Console.WriteLine(saveData.GetUnitsSummary());
            }

            if (args.Any(s => s == "-vill" || s == "-all"))
            {
                Console.WriteLine(saveData.GetVillagesSummary());
            }
        }
    }
}
