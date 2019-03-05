//-----------------------------------------------------------
//File:   Ai.cs
//Desc:   This class "thinks" for the Ai, deciding where it
//        wants to attack the playerGrid at random.
//----------------------------------------------------------- 

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Battleship
{
    public class Ai
    {
        public string Thinking { get; set; }
        Random random = new Random();
        List<Location> attackList = new List<Location>();
        public Ai(int size)
        {
            for (int x = 0; x < size; x++)
            {
                for (int y = 0; y < size; y++)
                {
                    attackList.Add( new Location(x, y) );
                }
            }
        }

        public Location DetermineNextAttack()
        {
            int result = GetRandomLocationToAttack();
            Location location = attackList[result];
            attackList.Remove(location);
            return location;
        }

        // Grabs a random number for x or y value
        public int GetRandomLocationToAttack()
        {
            int result = random.Next(0, attackList.Count);
            return result;
        }
    }
}
