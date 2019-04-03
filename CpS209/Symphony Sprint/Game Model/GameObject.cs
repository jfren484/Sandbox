using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Symphony_Sprint.Game_Model
{
    public class GameObject
    {
        

        public  string ImgPath { get;  set; }
        public  int Speed { get; set; }
        public  int PosX { get; set; }
        public  int PosY { get; set; }

        public string Serialize()
        {
            return "";
        }

        public void Deserialize(string data)
        {

        }

    }
}
