namespace Battleship
{
    public class Ship
    {
        public bool OrientationHorizontal { get; set; }
        public int Length { get; set; }

        public Ship(int length, bool orientationHorizontal)
        {
            Length = length;
            OrientationHorizontal = orientationHorizontal;
        }
    }
}