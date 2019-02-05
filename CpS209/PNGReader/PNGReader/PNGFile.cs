using System;
using System.Collections.Generic;
using System.IO;

namespace PNGReader
{
    public class PNGFile
    {
        private List<PNGChunk> _chunks;

        public PNGFile()
        {
            _chunks = new List<PNGChunk>();
        }

        public List<PNGChunk> Chunks
        {
            get
            {
                return _chunks;
            }
        }

        public static PNGFile Load(string filename)
        {
            PNGFile pngFile = new PNGFile();

            try
            {
                using (PNGFileReader reader = new PNGFileReader(filename))
                {

                    PNGChunk chunk = reader.ReadChunk();
                    while (chunk != null)
                    {
                        pngFile.Chunks.Add(chunk);
                        chunk = reader.ReadChunk();
                    }
                }
            }
            catch (Exception e)
            {
                Console.WriteLine("Error reading file {0}: {1}", filename, e.Message);
                Environment.Exit(1);
            }

            return pngFile;
        }
    }
}
