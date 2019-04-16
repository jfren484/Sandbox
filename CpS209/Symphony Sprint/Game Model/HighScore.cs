using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Symphony_Sprint.Game_Model
{
    class HighScore:IComparable<HighScore>
    {
            public string Name { get; set; }
            public int Score { get; set; }
            public HighScore(string name, int score)
            {
                Name = name;
                Score = score;
            }

        public int CompareTo(HighScore other)
        {
            return other.Score - this.Score;
        }
    }
}
