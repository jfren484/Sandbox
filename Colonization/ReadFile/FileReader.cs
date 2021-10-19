using ReadFile.Models;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;

namespace ReadFile
{
    public class FileReader
    {
        private readonly DataProcessor dataProcessor;

        public FileReader(string saveFilePath)
        {
            dataProcessor = new DataProcessor(File.ReadAllBytes(saveFilePath));
        }

        public SaveFile Read()
        {
            var data = new SaveFile
            {
                // First 16 bytes
                Header = dataProcessor.GetString(9),
                Unknown1 = dataProcessor.GetRange(3),
                MapSize = new Size
                {
                    Width = dataProcessor.GetInt(2),
                    Height = dataProcessor.GetInt(2)
                },

                // Next 32 bytes
                Unknown2 = dataProcessor.GetRange(10),
                Year = dataProcessor.GetInt(2),
                Season = dataProcessor.GetInt(1) == 0 ? "Spring" : "Autumn",
                Unknown3 = dataProcessor.GetRange(13),
                IndianVillageCount = dataProcessor.GetInt(2),
                UnitCount = dataProcessor.GetInt(2),
                TownCount = dataProcessor.GetInt(2),

                Unknown4 = dataProcessor.GetRange(6),
                Difficulty = (Difficulty)dataProcessor.GetInt(1),
                Unknown5 = dataProcessor.GetRange(103),
                ColonyData = new[]
                {
                    new Colony { Leader = dataProcessor.GetString(24), Name = dataProcessor.GetString(24), Unknown1 = (byte)dataProcessor.GetInt(1), PlayedBy = (PlayedBy)dataProcessor.GetInt(1), Unknown2 = dataProcessor.GetRange(2)},
                    new Colony { Leader = dataProcessor.GetString(24), Name = dataProcessor.GetString(24), Unknown1 = (byte)dataProcessor.GetInt(1), PlayedBy = (PlayedBy)dataProcessor.GetInt(1), Unknown2 = dataProcessor.GetRange(2)},
                    new Colony { Leader = dataProcessor.GetString(24), Name = dataProcessor.GetString(24), Unknown1 = (byte)dataProcessor.GetInt(1), PlayedBy = (PlayedBy)dataProcessor.GetInt(1), Unknown2 = dataProcessor.GetRange(2)},
                    new Colony { Leader = dataProcessor.GetString(24), Name = dataProcessor.GetString(24), Unknown1 = (byte)dataProcessor.GetInt(1), PlayedBy = (PlayedBy)dataProcessor.GetInt(1), Unknown2 = dataProcessor.GetRange(2)}
                },
                Unknown6 = dataProcessor.GetRange(6),
                Unknown7 = dataProcessor.GetLocation(2),
                Unknown8 = dataProcessor.GetRange(14),
                Towns = new List<Town>(),
                Units = new List<Unit>(),
                Villages = new List<Village>()
            };

            for (var i = 0; i < data.TownCount; ++i)
            {
                data.Towns.Add(new Town
                {
                    Location = dataProcessor.GetLocation(1),
                    Name = dataProcessor.GetString(24),
                    Nation = dataProcessor.GetInt(1),
                    Unknown1 = dataProcessor.GetRange(4), // 00 48 00 00
                    Colonists = GetColonistsFromTown(),
                    ColonistTiles = dataProcessor.GetRange(8), // N,E,S,W,NW,NE,SE,SW
                    Unknown2 = dataProcessor.GetRange(12), // All FF?
                    Buildings = GetBuildingsFromTown(dataProcessor.GetRange(6)),
                    Unknown3 = dataProcessor.GetRange(8),
                    ConstructionProgress = dataProcessor.GetInt(2),
                    ConstructionTarget = dataProcessor.GetInt(1),
                    Unknown4 = dataProcessor.GetRange(5),
                    Cargo = dataProcessor.GetIntArray(16),
                    PopulationBadge = dataProcessor.GetInt(1),
                    Unknown5 = dataProcessor.GetRange(7), // 01,01,01,00,00,00,00
                    LibertyBellsGenerated = dataProcessor.GetInt(2),
                    Unknown6 = dataProcessor.GetRange(6) // 00,00,C8,00,00,00
                });
            }

            for (var i = 0; i < data.UnitCount; ++i)
            {
                data.Units.Add(new Unit
                {
                    Location = dataProcessor.GetLocation(1),
                    UnitType = dataProcessor.GetInt(1),
                    Nation = dataProcessor.GetInt(1) & 0x0F,
                    Unknown1 = dataProcessor.GetRange(4),
                    Orders = dataProcessor.GetInt(1),
                    Destination = dataProcessor.GetLocation(1),
                    Unknown2 = dataProcessor.GetRange(10),
                    Tools = dataProcessor.GetInt(1),
                    Unknown3 = dataProcessor.GetInt(1),
                    Specialty = dataProcessor.GetInt(1),
                    Unknown4 = dataProcessor.GetRange(4)
                }) ;
            }

            data.Unknown9 = (byte)dataProcessor.GetInt(1);
            data.TaxRate = dataProcessor.GetInt(1);
            data.Unknown10 = dataProcessor.GetRange(40);
            data.Gold = dataProcessor.GetInt(4);
            data.Unknown11 = dataProcessor.GetRange(1218);

            for (var i = 0; i < data.IndianVillageCount; ++i)
            {
                var village = new Village
                {
                    Location = dataProcessor.GetLocation(1),
                    Nation = dataProcessor.GetInt(1),
                    Unknown1 = dataProcessor.GetRange(2),
                    MissionNation = dataProcessor.GetInt(1),
                    Unknown2 = dataProcessor.GetRange(12)
                };
                village.MissionNation = village.MissionNation == 0xFF ? -1 : village.MissionNation & 0x0F;

                data.Villages.Add(village);
            }

            data.Unknown12 = dataProcessor.GetRange(1351);

            data.Map = dataProcessor.GetRange(data.MapSize.Width * data.MapSize.Height)
                .Select(b => new MapTile
                {
                    TerrainBase = (TerrainBase)(b & 0x1F), // bottom 5 bits
                    TerrainFeature = (TerrainFeature)(b / 0x20) // top 3 bits
                })
                .ToArray();

            data.NextAddr = dataProcessor.GetNextAddr();

            return data;
        }

        private bool[] GetBuildingsFromTown(byte[] bytes)
        {
            byte[] masks = new byte[] { 0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80 };
            var buildings = new bool[42];

            for (var i = 0; i < 42; ++i)
            {
                var byteAddr = i / 8;
                var bitMask = masks[i % 8];

                buildings[i] = (bytes[byteAddr] & bitMask) != 0;
            }

            return buildings;
        }

        private List<TownColonist> GetColonistsFromTown()
        {
            var colonists = new List<TownColonist>();

            var colonistCount = dataProcessor.GetInt(1);
            var colonistOccupations = dataProcessor.GetRange(32);
            var colonistSpecialties = dataProcessor.GetRange(32);
            var colonistTimeOnJob = dataProcessor.GetRange(16); // Nibble per colonist

            for (var i = 0; i < colonistCount; ++i)
            {
                var timeByte = colonistTimeOnJob[i / 2];

                colonists.Add(new TownColonist
                {
                    Specialty = colonistSpecialties[i],
                    Occupation = colonistOccupations[i],
                    TimeOnJob = i % 2 == 0 ? timeByte & 0x0F : timeByte / 16
                });
            }

            return colonists;
        }
    }
}