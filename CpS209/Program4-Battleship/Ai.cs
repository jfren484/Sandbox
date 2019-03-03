using System;
using System.Collections.Generic;

namespace Battleship
{
    public class Ai
    {
        private readonly Random random = new Random();

        private readonly List<Location> RemainingGuesses = new List<Location>();

        public Ai(int size)
        {
            for (int x = 0; x < size; x++)
            {
                for (int y = 0; y < size; y++)
                {
                    RemainingGuesses.Add(new Location(x, y));
                }
            }
        }

        public Location GetNextAttack()
        {
            int index = random.Next(RemainingGuesses.Count);

            Location nextAttack = RemainingGuesses[index];
            RemainingGuesses.RemoveAt(index);

            return nextAttack;
        }
    }
}
