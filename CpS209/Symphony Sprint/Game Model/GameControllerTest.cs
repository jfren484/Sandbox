using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NUnit.Framework;

namespace Symphony_Sprint.Game_Model
{
    [TestFixture]
    public class TestSerialize
    {
        [Test]
        public void Default_Load()
        {
            GameController game = new GameController();
            game.Load(DateTime.Now.ToString("13-27-15"));
            Assert.IsTrue(game.level.gameObjs.Count == 2);
            Assert.IsTrue(game.level.gameObjs[1].PosX == 250);
            Assert.IsTrue(game.level.gameObjs[0].Speed == 30);
        }

        [Test]
        public void Default_Save()
        {
            GameController game = new GameController();
            string save = game.Save();
            Assert.IsTrue(save == "");
        }
    }
}
