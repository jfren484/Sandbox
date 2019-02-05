using System;
using System.Collections.Generic;

namespace PNGReader
{
    class Program
    {
        static void Main(string[] args)
        {
            if (args.Length != 1)
            {
                Console.WriteLine("Usage: pngreadtag <pngfilename>");
                Environment.Exit(1);
            }

            string filename = args[0];
            Console.WriteLine("Metadata in {0}:", filename);

            PNGFile pngFile = PNGFile.Load(filename);

            foreach (PNGChunk chunk in pngFile.Chunks)
            {
                if (chunk.ChunkType == "tEXt")
                {
                    KeyValuePair<string, string> kvp = chunk.ParseTextualData();
                    Console.WriteLine("{0}: {1}", kvp.Key, kvp.Value);
                }
            }
        }
    }
}