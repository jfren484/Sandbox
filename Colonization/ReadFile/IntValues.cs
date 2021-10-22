namespace ReadFile
{
    public static class CargoTypes
    {
        public const int Food = 0x0;
        public const int Sugar = 0x1;
        public const int Tobacco = 0x2;
        public const int Cotton = 0x3;
        public const int Furs = 0x4;
        public const int Lumber = 0x5;
        public const int Ore = 0x6;
        public const int Silver = 0x7;
        public const int Horses = 0x8;
        public const int Rum = 0x9;
        public const int Cigars = 0xA;
        public const int Cloth = 0xB;
        public const int Coats = 0xC;
        public const int TradeGoods = 0xD;
        public const int Tools = 0xE;
        public const int Muskets = 0xF;
    }

    public static class Construction
    {
        public const int Stockade = 0x00;
        public const int Fort = 0x01;
        public const int Fortress = 0x02;
        public const int Armory = 0x03;
        public const int Magazine = 0x04;
        public const int Arsenal = 0x05;
        public const int Docks = 0x06;
        public const int DryDock = 0x07;
        public const int Shipyard = 0x08;
        public const int TownHall0Tools = 0x09;
        public const int TownHall50Tools = 0x0A;
        public const int TownHall100Tools = 0x0B;
        public const int Schoolhouse = 0x0C;
        public const int College = 0x0D;
        public const int University = 0x0E;
        public const int Warehouse = 0x0F;
        public const int WarehouseExpansion = 0x10;
        public const int Stable = 0x11;
        public const int CustomHouse = 0x12;
        public const int PrintingPress = 0x13;
        public const int Newspaper = 0x14;
        public const int WeaversHouse = 0x15;
        public const int WeaversShop = 0x16;
        public const int TextileMill = 0x17;
        public const int TobacconistsHouse = 0x18;
        public const int TobacconistsShop = 0x19;
        public const int CigarFactory = 0x1A;
        public const int RumDistillersHouse = 0x1B;
        public const int RumDistillery = 0x1C;
        public const int RumFactory = 0x1D;
        public const int Capitol = 0x1E;
        public const int CapitolExpansion = 0x1F;
        public const int FurTradersHouse = 0x20;
        public const int FurTradingPost = 0x21;
        public const int FurFactory = 0x22;
        public const int CarpentersShop = 0x23;
        public const int LumberMill = 0x24;
        public const int Church = 0x25;
        public const int Cathedral = 0x26;
        public const int BlacksmithsHouse = 0x27;
        public const int BlacksmithsShop = 0x28;
        public const int IronWorks = 0x29;
        public const int Artillery = 0x2A;
        public const int WagonTrain = 0x2B;
        public const int Caravel = 0x2C;
        public const int Merchantman = 0x2D;
        public const int Galleon = 0x2E;
        public const int Privateer = 0x2F;
        public const int Frigate = 0x30;
        public const int Nothing = 0xFF;
    }

    public static class Orders
    {
        public const int None = 0x0;
        public const int Sentry = 0x1;
        public const int TradeRoute = 0x2;
        public const int Going = 0x3;
        public const int Fortifying = 0x5;
        public const int Fortified = 0x6;
        public const int Unknown1 = 0xB;
        public const int Unknown2 = 0xC;
    }

    public static class Specialties
    {
        public const int Farmer = 0x00;
        public const int SugarPlanter = 0x01;
        public const int TobaccoPlanter = 0x02;
        public const int CottonPlanter = 0x03;
        public const int FurTrapper = 0x04;
        public const int Lumberjack = 0x05;
        public const int OreMiner = 0x06;
        public const int SilverMiner = 0x07;
        public const int Fisherman = 0x08;
        public const int Distiller = 0x09;
        public const int Tobacconist = 0x0A;
        public const int Weaver = 0x0B;
        public const int FurTrader = 0x0C;
        public const int Carpenter = 0x0D;
        public const int Blacksmith = 0x0E;
        public const int Gunsmith = 0x0F;
        public const int Preacher = 0x10;
        public const int Statesman = 0x11;
        public const int Teacher = 0x12;
        public const int NoSpecialty = 0x13;
        public const int Pioneer = 0x14;
        public const int Soldier = 0x15;
        public const int Scout = 0x16;
        public const int Dragoon = 0x17;
        public const int Missionary = 0x18;
        public const int IndServant = 0x19;
        public const int Criminal = 0x1A;
        public const int Convert = 0x1B;
        public const int NoSpecialty2 = 0x1C;
        public const int Desert  = 0x1D;
        public const int Blank = 0x1E;
        public const int Fortress  = 0x1F;
        public const int French  = 0x20;
    }

    public static class UnitTypes
    {
        public const int Colonists = 0x00;
        public const int Soldiers = 0x01;
        public const int Pioneers = 0x02;
        public const int Missionaries = 0x03;
        public const int Dragoons = 0x04;
        public const int Scouts = 0x05;
        public const int Regulars = 0x06;
        public const int ContCav = 0x07;
        public const int Cavalry = 0x08;
        public const int ContArmy = 0x09;
        public const int Treasure = 0x0A;
        public const int Artillery = 0x0B;
        public const int WagonTrain = 0x0C;
        public const int Caravel = 0x0D;
        public const int Merchantman = 0x0E;
        public const int Galleon = 0x0F;
        public const int Privateer = 0x10;
        public const int Frigate = 0x11;
        public const int ManOWar = 0x12;
        public const int Braves = 0x13;
        public const int ArmedBraves = 0x14;
        public const int Mtdraves = 0x15;
        public const int MtdWarriors = 0x16;
    }
}
