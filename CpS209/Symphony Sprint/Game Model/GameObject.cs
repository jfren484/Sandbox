using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Symphony_Sprint.Game_Model
{
    public class GameObject : ISerialize
    {
        

        public  string ImgPath { get;  set; }
        public  int Speed { get; set; }

        public int posX { get; set; }
        public int posY { get; set; }

        public GameObject(string imgPath, int speed, int x, int y)
        {
            this.posX = x;
            this.posY = y;
            this.ImgPath = imgPath;
            this.Speed = speed;
        }

        public string Serialize()
        {
            return $"Speed={Speed},PosX={posX},PosY={posY},ImgPath={ImgPath}";
        }

        public void Deserialize(string data)
        {

        }

    }
}
