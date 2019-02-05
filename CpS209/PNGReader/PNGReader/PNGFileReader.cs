using System;
using System.IO;

namespace PNGReader
{
    public class PNGFileReader : IDisposable
    {
        private static readonly byte[] PNGHeaderTag = new byte[] { 137, 80, 78, 71, 13, 10, 26, 10 };

        private readonly FileStream fileStream;
        private readonly BinaryReader reader;

        public PNGFileReader(string filename)
        {
            fileStream = File.Open(filename, FileMode.Open);
            reader = new BinaryReader(fileStream);

            ReadPNGHeader(filename);
        }

        /// <summary>
        /// Read a chunk from a PNG file
        /// </summary>
        /// <param name="br"></param>
        /// <returns>A PNGChunk, or null if end of file</returns>
        public PNGChunk ReadChunk()
        {
            if (reader.PeekChar() == -1)
            {
                return null;
            }

            // Length         $xx xx xx xx (32-bit integer)
            // Header         $xx xx xx xx (four characters)
            // Data           $xx? (Byte amount declared by 32-bit integer in Length)
            // CRC            $xx xx xx xx

            uint dataLength = reader.ReadUInt32BigEndian();

            char[] headerChars = reader.ReadChars(4);
            string header = new string(headerChars);

            byte[] data = new byte[dataLength];
            if (dataLength > 0)
            {
                data = reader.ReadBytes(data.Length);
            }

            uint crc = reader.ReadUInt32BigEndian();

            return new PNGChunk(dataLength, header, data, crc);
        }

        public void Dispose()
        {
            reader.Dispose();
            fileStream.Dispose();
        }

        private void ReadPNGHeader(string filename)
        {
            byte[] headerChars = reader.ReadBytes(8);

            for (int i = 0; i < headerChars.Length; ++i)
            {
                if (headerChars[i] != PNGHeaderTag[i])
                {
                    throw new Exception(string.Format("The file {0} does not contain the PNG header.", filename));
                }
            }
        }
    }
}
