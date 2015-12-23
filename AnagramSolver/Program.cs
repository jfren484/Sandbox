using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;

namespace AnagramSolver
{
    public static class Program
    {
        public static void Main(string[] args)
        {
            if (args.Length == 0)
            {
                throw new Exception("Must specify input as an argument.");
            }

            var input = args[0];
            var inputSimplified = Simplify(input);
            Console.WriteLine($"Using \"{input}\" for input, simplified as \"{inputSimplified}\".");

            var words = File.ReadAllLines("wordlist").Distinct().ToList();
            Console.WriteLine($"Read file with {words.Count} distinct words.");

            var removedCount = words.RemoveAll(w => !inputSimplified.ContainsWord(w));
            Console.WriteLine($"Removed {removedCount} words that contained characters not found in input.");

            var wordDict = words.ToDictionary(w => w, Simplify);
            Console.WriteLine($"Hashed {wordDict.Count} words.");

            Console.WriteLine();
            foreach (var wordPair in wordDict)
            {

                //Console.WriteLine(wordPair.Key);
            }
        }

        private static string Simplify(string original)
        {
            return new string(Regex.Replace(original, "[^A-Za-z]", "").OrderBy(c => c).ToArray());
        }

        private static bool ContainsWord(this string haystack, string needle)
        {
            var haystackMap = haystack.Map();
            var needleMap = needle.Map();

            return needleMap.All(nPair => haystackMap.ContainsKey(nPair.Key) && haystackMap[nPair.Key] >= nPair.Value);
        }

        private static Dictionary<char, int> Map(this string str)
        {
            return str.ToLookup(c => c).ToDictionary(x => x.Key, x => x.Count());
        }
    }
}
