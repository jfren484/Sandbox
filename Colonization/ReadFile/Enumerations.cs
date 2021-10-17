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

    public enum PlayedBy
    {
        Player = 0x00,
        AI = 0x01,
        Withdrawn = 0x02
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
