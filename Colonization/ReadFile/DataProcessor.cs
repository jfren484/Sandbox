using ReadFile.Models;
using System.Text;

namespace ReadFile
{
    public class DataProcessor
    {
        private readonly byte[] data;
        private int index;

        public DataProcessor(byte[] dataToProcess)
        {
            this.data = dataToProcess;
        }

        public int GetInt(int size)
        {
            var value = (int)data[index++];
            var mul = 1;

            while (size-- > 1)
            {
                mul *= 256;
                value += data[index++] * mul;
            }

            return value;
        }

        public int[] GetIntArray(int size)
        {
            var arr = new int[size];

            for (var i = 0; i < size; ++i)
            {
                arr[i] = GetInt(2);
            }

            return arr;
        }

        public Location GetLocation(int size)
        {
            return new Location
            {
                X = GetInt(size),
                Y = GetInt(size)
            };
        }

        public int GetNextAddr()
        {
            return index;
        }

        public byte[] GetRange(int length)
        {
            var value = data[index..(index + length)];
            index += length;

            return value;
        }

        public string GetString(int maxLength)
        {
            var length = 0;

            while (length < maxLength && data[index + length] != 0)
            {
                ++length;
            }

            var value = Encoding.ASCII.GetString(data, index, length);
            index += maxLength;

            return value;
        }
    }
}
