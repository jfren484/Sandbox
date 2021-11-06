using System;

namespace ReadFile
{
    public enum CargoType
    {
        Food = 0x0,
        Sugar = 0x1,
        Tobacco = 0x2,
        Cotton = 0x3,
        Furs = 0x4,
        Lumber = 0x5,
        Ore = 0x6,
        Silver = 0x7,
        Horses = 0x8,
        Rum = 0x9,
        Cigars = 0xA,
        Cloth = 0xB,
        Coats = 0xC,
        TradeGoods = 0xD,
        Tools = 0xE,
        Muskets = 0xF
    }

    [Flags]
    public enum ColonyReportOptions
    {
        LabelsOnCargoAndTerrain_Hide = 0x1,
        LabelsOnBuildings_Hide = 0x2,
        ReportNewCargosAvailable_Disabled = 0x4,
        ReportInefficientGovernment_Disabled = 0x8,
        ReportToolsNeededForProduction_Disabled = 0x10,
        ReportRawMaterialsShortages_Disabled = 0x20,
        ReportFoodShortages_Disabled = 0x40,
        ReportWhenColonistsTrained_Disabled = 0x80,
        ReportSonsOfLibertyMembership_Disabled = 0x100,
        ReportRebelMajorities_Disabled = 0x200
    }

    public enum ColonyTile
    {
        N = 0,
        E = 1,
        S = 2,
        W = 3,
        NW = 4,
        NE = 5,
        SE = 6,
        SW = 7
    }

    public enum ConstructionTarget
    {
        Stockade = 0x00,
        Fort = 0x01,
        Fortress = 0x02,
        Armory = 0x03,
        Magazine = 0x04,
        Arsenal = 0x05,
        Docks = 0x06,
        DryDock = 0x07,
        Shipyard = 0x08,
        TownHall0Tools = 0x09,
        TownHall50Tools = 0x0A,
        TownHall100Tools = 0x0B,
        Schoolhouse = 0x0C,
        College = 0x0D,
        University = 0x0E,
        Warehouse = 0x0F,
        WarehouseExpansion = 0x10,
        Stable = 0x11,
        CustomHouse = 0x12,
        PrintingPress = 0x13,
        Newspaper = 0x14,
        WeaversHouse = 0x15,
        WeaversShop = 0x16,
        TextileMill = 0x17,
        TobacconistsHouse = 0x18,
        TobacconistsShop = 0x19,
        CigarFactory = 0x1A,
        RumDistillersHouse = 0x1B,
        RumDistillery = 0x1C,
        RumFactory = 0x1D,
        Capitol = 0x1E,
        CapitolExpansion = 0x1F,
        FurTradersHouse = 0x20,
        FurTradingPost = 0x21,
        FurFactory = 0x22,
        CarpentersShop = 0x23,
        LumberMill = 0x24,
        Church = 0x25,
        Cathedral = 0x26,
        BlacksmithsHouse = 0x27,
        BlacksmithsShop = 0x28,
        IronWorks = 0x29,
        Artillery = 0x2A,
        WagonTrain = 0x2B,
        Caravel = 0x2C,
        Merchantman = 0x2D,
        Galleon = 0x2E,
        Privateer = 0x2F,
        Frigate = 0x30,
        Nothing = 0xFF
    }

    public enum Difficulty
    {
        Discoverer = 0x00,
        Explorer = 0x01,
        Conquistador = 0x02,
        Governor = 0x03,
        Viceroy = 0x04
    }

    [Flags]
    public enum GameOptions
    {
        TutorialHints = 0x80,
        WaterColorCycling_Disable = 0x100,
        CombatAnalysis = 0x200,
        AutoSave = 0x400,
        EndOfTurn = 0x800,
        FastPieceSlide = 0x1000,
        CheatMode = 0x2000,
        ShowForeignMoves = 0x4000,
        ShowIndianMoves = 0x8000
    }

    public enum Nation
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
        Wilderness = 0xF,
        None = 0xFF
    }

    public enum Orders
    {
        None = 0x0,
        Sentry = 0x1,
        TradeRoute = 0x2,
        Going = 0x3,
        Fortifying = 0x5,
        Fortified = 0x6,
        Unknown1 = 0xB,
        Unknown2 = 0xC
    }

    public enum PlayedBy
    {
        Player = 0x00,
        AI = 0x01,
        Withdrawn = 0x02
    }

    public enum Season
    {
        Spring = 0x00,
        Autumn = 0x01
    }

    public enum Specialty
    {
        Farmer = 0x00,
        SugarPlanter = 0x01,
        TobaccoPlanter = 0x02,
        CottonPlanter = 0x03,
        FurTrapper = 0x04,
        Lumberjack = 0x05,
        OreMiner = 0x06,
        SilverMiner = 0x07,
        Fisherman = 0x08,
        Distiller = 0x09,
        Tobacconist = 0x0A,
        Weaver = 0x0B,
        FurTrader = 0x0C,
        Carpenter = 0x0D,
        Blacksmith = 0x0E,
        Gunsmith = 0x0F,
        Preacher = 0x10,
        Statesman = 0x11,
        Teacher = 0x12,
        NoSpecialty = 0x13,
        Pioneer = 0x14,
        Soldier = 0x15,
        Scout = 0x16,
        Dragoon = 0x17,
        Missionary = 0x18,
        IndServant = 0x19,
        Criminal = 0x1A,
        Convert = 0x1B,
        NoSpecialty2 = 0x1C,
        Desert = 0x1D,
        Blank = 0x1E,
        Fortress = 0x1F,
        French = 0x20
    }

    [Flags]
    public enum SoundOptions
    {
        BackgroundMusic = 0x2,
        EventMusic = 0x4,
        SoundEffects = 0x8
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

    public enum UnitType
    {
        Colonists = 0x00,
        Soldiers = 0x01,
        Pioneers = 0x02,
        Missionaries = 0x03,
        Dragoons = 0x04,
        Scouts = 0x05,
        Regulars = 0x06,
        ContCav = 0x07,
        Cavalry = 0x08,
        ContArmy = 0x09,
        Treasure = 0x0A,
        Artillery = 0x0B,
        WagonTrain = 0x0C,
        Caravel = 0x0D,
        Merchantman = 0x0E,
        Galleon = 0x0F,
        Privateer = 0x10,
        Frigate = 0x11,
        ManOWar = 0x12,
        Braves = 0x13,
        ArmedBraves = 0x14,
        MtdBraves = 0x15,
        MtdWarriors = 0x16
    }
}
