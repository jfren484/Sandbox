using System;

namespace ReadFile
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var reader = new FileReader(args[0]);

            var saveData = reader.Read();

            Console.WriteLine(saveData.GetSummary());
        }
    }
}
