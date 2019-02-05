using System;
using System.IO;

namespace PNGReader
{
    public static class BinaryReaderExt
    {
        public static UInt32 ReadUInt32BigEndian(this BinaryReader reader)
        {
            var data = reader.ReadBytes(4);
            Array.Reverse(data);
            return BitConverter.ToUInt32(data, 0);
        }
    }
}
