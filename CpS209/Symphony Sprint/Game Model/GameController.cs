using Symphony_Sprint.Game_Model.World_Objects;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Symphony_Sprint.Game_Model
{
    class GameController
    {

        public Level level;
        public Player player;
        public int points;
        public int notes;
        public bool isGameOver = false;

        public Level Level { get { return level; } set { level = value; } }
        public Player Player { get { return player; } set { player = value; } }
        public int Points { get { return points; } set { points = value; } }
        public int Notes { get { return notes; } set { notes = value; } }

        public void Load(string filename)
        {
            using (StreamReader rd = new StreamReader(filename))
            {
                rd.ReadLine();
                throw new NotImplementedException();
            }
            
        }

        public string Save()
        {
            throw new NotImplementedException();
        }

    }
}
