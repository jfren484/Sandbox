using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Symphony_Sprint.Game_Model.World_Objects.Notes
{
    class WholeNote : GameObject
    {
        public int pointValue;

        public string imgPath;
        public int speed;
        public int posX;
        public int posY;

        public int PointValue { get { return pointValue; } set { pointValue = value; } }

        public override int PosX { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }
        public override string ImgPath { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }
        public override int Speed { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }
        public override int PosY { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }

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
