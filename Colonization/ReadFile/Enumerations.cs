using System;

namespace ReadFile
{
    public enum Difficulty
    {
        Discoverer = 0x00,
        Explorer = 0x01,
        Conquistador = 0x02,
        Governor = 0x03,
        Viceroy = 0x04
    }

    public enum Nations
    {
        England = 0x0,
        France = 0x1,
        Spain = 0x2,
        Netherlands = 0x3,
        Inca = 0x4,
        Aztec = 0x5,
        Arawak = 0x6,
        Iroquois = 0x7,
        Cherokee = 0x8,
        Apache = 0x9,
        Sioux = 0xA,
        Tupi = 0xB,
        Wilderness = 0xF
    }

    public enum PlayedBy
    {
        Player = 0x00,
        AI = 0x01,
        Withdrawn = 0x02
    }

    public enum TerrainBase
    {
        Tundra = 0x00,
        Desert = 0x01,
        Plains = 0x02,
        Prairie = 0x03,
        Grassland = 0x04,
        Savannah = 0x05,
        Marsh = 0x06,
        Swamp = 0x07,
        BorealForest = 0x08,
        ScrubForest = 0x09,
        MixedForest = 0x0A,
        BroadleafForest = 0x0B,
        ConiferForest = 0x0C,
        TropicalForest = 0x0D,
        WetlandForest = 0x0E,
        RainForest = 0x0F,
        Arctic = 0x18,
        Ocean = 0x19,
        SeaLane = 0x1A
    }

    [Flags]
    public enum TerrainFeature
    {
        Elevation = 0x1, // Hills/Mountain for Major = 0/1
        River = 0x2,
        Major = 0x4
    }

    public enum Tile
    {
        North = 0x00,
        East = 0x01,
        South = 0x02,
        West = 0x03,
        Northwest = 0x04,
        Northeast = 0x05,
        Southeast = 0x06,
        Southwest = 0x07
    }
}
