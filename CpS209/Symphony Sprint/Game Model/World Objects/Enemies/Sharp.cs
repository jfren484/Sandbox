using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Symphony_Sprint.Game_Model.World_Objects.Enemies
{
    class Sharp : GameObject
    {
        public int damage;
        public string imgPath;
        public int speed;
        public int posX;
        public int posY;
        public int Damage { get { return damage; } set { damage = value; } }
        public override string ImgPath { get { return imgPath; } set { imgPath = value; } }
        public override int Speed { get { return speed; } set { speed = value; } }
        public override int PosX { get { return posX; } set { posX = value; } }
        public override int PosY { get { return posY; } set { posY = value; } }

        public override string Serialize()
        {
            throw new NotImplementedException();
        }

        public override void Deserialize(string data)
        {
            throw new NotImplementedException();
        }
    }
}
