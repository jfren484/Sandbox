//-----------------------------------------------------------
//File:   Location.cs
//Desc:   This program accepts two numbers as input and
//        prints the sum as output.
//----------------------------------------------------------- 

namespace Battleship.Model
{
    public class Location
    {
        public int X { get; set; }
        public int Y { get; set; }

        public Location(int x, int y)
        {
            X = x;
            Y = y;
        }
    }
}
