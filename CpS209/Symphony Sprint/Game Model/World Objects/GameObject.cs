using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Symphony_Sprint.Game_Model
{
    public abstract class GameObject
    {
        

        public abstract string ImgPath { get;  set; }
        public abstract int Speed { get; set; }
        public abstract int PosX { get; set; }
        public abstract int PosY { get; set; }

        public abstract string Serialize();

        public abstract void Deserialize(string data);

    }
}
