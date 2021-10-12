using ReadFile.Models;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Text;

namespace ReadFile
{
    public class FileReader
    {
        private readonly byte[] bytes;
        private int index;

        public FileReader(string saveFilePath)
        {
            bytes = File.ReadAllBytes(saveFilePath);
            index = 0;
        }

        public SaveFile Read()
        {
            var data = new SaveFile();

            data.Header = GetString(9);
            data.Unknown1 = GetRange(3);
            data.MapSize = new Size
            {
                Width = GetInt(2),
                Height = GetInt(2)
            };
            data.Unknown2 = GetRange(10);
            data.Year = GetInt(2);
            data.Season = GetInt(1) == 0 ? "Spring" : "Autumn";
            data.Unknown3 = GetRange(15);
            data.UnitCount = GetInt(2);
            data.TownCount = GetInt(2);
            data.Unknown4 = GetRange(110);
            data.ColonyData = new[]
                {
                    new Colony { Leader = GetString(24), Name = GetString(24), ExtraData = GetRange(4)},
                    new Colony { Leader = GetString(24), Name = GetString(24), ExtraData = GetRange(4)},
                    new Colony { Leader = GetString(24), Name = GetString(24), ExtraData = GetRange(4)},
                    new Colony { Leader = GetString(24), Name = GetString(24), ExtraData = GetRange(4)}
                };
            data.Unknown5 = GetRange(6);
            data.Unknown6 = GetLocation(2);
            data.Unknown7 = GetRange(14);
            data.Towns = new List<Town>();
            data.Units = new List<Unit>();

            for (var i = 0; i < data.TownCount; ++i)
            {
                data.Towns.Add(new Town
                {
                    Location = GetLocation(1),
                    Name = GetString(24),
                    Unknown1 = GetRange(120),
                    ConstructionProgress = GetInt(2),
                    ConstructionTarget = GetInt(1),
                    Unknown2 = GetRange(5),
                    Cargo = GetIntArray(16),
                    Unknown3 = GetRange(16)
                });
            }

            for (var i = 0; i < data.UnitCount; ++i)
            {
                data.Units.Add(new Unit
                {
                    Location = GetLocation(1),
                    UnitType = GetInt(1),
                    Nation = (byte)(GetInt(1) & 0x0F),
                    Unknown1 = GetRange(5),
                    Destination = GetLocation(1),
                    Unknown2 = GetRange(10),
                    Tools = GetInt(1),
                    Unknown3 = GetInt(1),
                    Specialty = GetInt(1),
                    Unknown4 = GetRange(4)
                }) ;
            }

            data.NextAddr = index;

            return data;
        }

        private int GetInt(int size)
        {
            var value = (int)bytes[index++];

            if (size > 1)
            {
                value += 256 * bytes[index++];
            }

            return value;
        }

        private int[] GetIntArray(int size)
        {
            var arr = new int[size];

            for (var i = 0; i < size; ++i)
            {
                arr[i] = GetInt(2);
            }

            return arr;
        }

        private Location GetLocation(int size)
        {
            return new Location
            {
                X = GetInt(size),
                Y = GetInt(size)
            };
        }

        private byte[] GetRange(int length)
        {
            var value = bytes[index..(index + length)];
            index += length;

            return value;
        }

        private string GetString(int length)
        {
            var offset = length;

            while (length > 0 && bytes[index + length - 1] == 0)
            {
                --length;
            }

            var value = Encoding.ASCII.GetString(bytes, index, length);
            index += offset;

            return value;
        }
    }
}