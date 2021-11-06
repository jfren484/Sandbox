using ReadFile.Models;
using System.Collections.Generic;
using System.IO;
using System.Linq;

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
                Unknown2 = dataProcessor.GetRange(2),
                GameOptions = (GameOptions)dataProcessor.GetInt(2),
                ColonyReportOptions = (ColonyReportOptions)dataProcessor.GetInt(2),
                SoundOptions = (SoundOptions)dataProcessor.GetInt(1),
                Unknown3 = dataProcessor.GetRange(3),
                Year = dataProcessor.GetInt(2),
                Season = (Season)dataProcessor.GetByte(),
                Unknown4 = dataProcessor.GetRange(5),
                ActiveUnitIndex = dataProcessor.GetInt(2),
                Unknown5 = dataProcessor.GetRange(6),
                IndianVillageCount = dataProcessor.GetInt(2),
                UnitCount = dataProcessor.GetInt(2),
                TownCount = dataProcessor.GetInt(2),

                Unknown6 = dataProcessor.GetRange(6),
                Difficulty = (Difficulty)dataProcessor.GetByte(),
                Unknown7 = dataProcessor.GetRange(0x63),
                DiscoveryFlags = dataProcessor.GetRange(4),
                ColonyData = new[]
                {
                    new Colony { LeaderName = dataProcessor.GetString(24), Name = dataProcessor.GetString(24), Unknown1 = dataProcessor.GetByte(), PlayedBy = (PlayedBy)dataProcessor.GetByte(), Unknown2 = dataProcessor.GetRange(2)},
                    new Colony { LeaderName = dataProcessor.GetString(24), Name = dataProcessor.GetString(24), Unknown1 = dataProcessor.GetByte(), PlayedBy = (PlayedBy)dataProcessor.GetByte(), Unknown2 = dataProcessor.GetRange(2)},
                    new Colony { LeaderName = dataProcessor.GetString(24), Name = dataProcessor.GetString(24), Unknown1 = dataProcessor.GetByte(), PlayedBy = (PlayedBy)dataProcessor.GetByte(), Unknown2 = dataProcessor.GetRange(2)},
                    new Colony { LeaderName = dataProcessor.GetString(24), Name = dataProcessor.GetString(24), Unknown1 = dataProcessor.GetByte(), PlayedBy = (PlayedBy)dataProcessor.GetByte(), Unknown2 = dataProcessor.GetRange(2)}
                },
                Unknown8 = dataProcessor.GetRange(6),
                Unknown9 = dataProcessor.GetLocation(2),
                Unknown10 = dataProcessor.GetRange(0x0E),
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
                    Nation = (Nation)dataProcessor.GetByte(),
                    Unknown1 = dataProcessor.GetRange(4), // 00 48 00 00
                    Colonists = GetColonistsFromTown(),
                    ColonistTiles = dataProcessor.GetRange(8),
                    Unknown2 = dataProcessor.GetRange(0x0C), // All FF?
                    Buildings = GetBuildingsFromTown(dataProcessor.GetRange(6)),
                    Unknown3 = dataProcessor.GetRange(8),
                    ConstructionProgress = dataProcessor.GetInt(2),
                    ConstructionTarget = (ConstructionTarget)dataProcessor.GetByte(),
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
                    UnitType = (UnitType)dataProcessor.GetByte(),
                    Nation = dataProcessor.GetNation(),
                    Unknown1 = dataProcessor.GetRange(4),
                    Orders = (Orders)dataProcessor.GetByte(),
                    Destination = dataProcessor.GetLocation(1),
                    Unknown2 = dataProcessor.GetRange(0x0A),
                    Tools = dataProcessor.GetInt(1),
                    Unknown3 = dataProcessor.GetByte(),
                    Specialty = (Specialty)dataProcessor.GetByte(),
                    Unknown4 = dataProcessor.GetRange(4)
                }) ;
            }

            data.Unknown11 = dataProcessor.GetByte();
            data.TaxRate = dataProcessor.GetInt(1);
            data.Unknown12 = dataProcessor.GetRange(0x28);
            data.Gold = dataProcessor.GetInt(4);
            data.Unknown13 = dataProcessor.GetRange(0x4C2);

            for (var i = 0; i < data.IndianVillageCount; ++i)
            {
                data.Villages.Add(new Village
                {
                    Location = dataProcessor.GetLocation(1),
                    Nation = (Nation)dataProcessor.GetNation(),
                    Unknown1 = dataProcessor.GetRange(2),
                    MissionNation = (Nation)dataProcessor.GetNation(),
                    Unknown2 = dataProcessor.GetRange(12)
                });
            }

            data.Unknown14 = dataProcessor.GetRange(0x547);

            var mapLength = data.MapSize.Width * data.MapSize.Height;
            data.Map = dataProcessor.GetRange(mapLength).Select((b, i) => new { Index = i, TerrainByte = b })
                .Zip(dataProcessor.GetRange(mapLength), (x, b2) => new { x.Index, x.TerrainByte, b2 })
                .Zip(dataProcessor.GetRange(mapLength), (x, b3) => new { x.Index, x.TerrainByte, x.b2, TerritoryByte = b3 })
                .Zip(dataProcessor.GetRange(mapLength), (x, b4) =>
                {
                    var terrainBase = (TerrainBase)(x.TerrainByte & 0x1F); // bottom 5 bits
                    var terrainFeature = (TerrainFeature)(x.TerrainByte / 0x20); // top 3 bits
                    var nation = (Nation)(x.TerritoryByte / 0x10);

                    return new MapTile
                    {
                        Coordinates = new Location { X = x.Index % data.MapSize.Width, Y = x.Index / data.MapSize.Width },
                        TerrainBase = terrainBase,
                        TerrainFeature = terrainFeature,
                        IsPlowed = (x.b2 & 0x40) != 0,
                        HasRoad = (x.b2 & 0x08) != 0,
                        IsOccupied = (x.b2 & 0x01) != 0,
                        UnknownByte1 = (byte)(x.b2 & 0xB6),
                        Nation = nation,
                        NationName = (int)terrainBase > 0x0F
                        ? string.Empty
                        : ((int)nation < 4
                            ? data.ColonyData[(int)nation].Name
                            : nation.ToString()),
                        DistinctBodyNumber = (byte)(x.TerritoryByte % 0x10),
                        VisibleToNations = new[]
                            {
                                (b4 & 0x10) != 0,
                                (b4 & 0x20) != 0,
                                (b4 & 0x40) != 0,
                                (b4 & 0x80) != 0
                            },
                        UnknownNibble2 = (byte)(b4 & 0x0F)
                    };
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