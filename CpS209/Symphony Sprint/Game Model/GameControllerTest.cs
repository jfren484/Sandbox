using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NUnit.Framework;
using Moq;
using Symphony_Sprint.Game_Model.World_Objects;

namespace Symphony_Sprint.Game_Model
{
    [TestFixture]
    public class TestSerialize
    {
        [Test]
        public void Load_Test()
        {
            GameController game = new GameController();
            game.Load("testload");
            Assert.IsTrue(game.level.gameObjs.Count == 2);
            Assert.IsTrue(game.level.gameObjs[0].Speed == 30);
        }

        [Test]
        public void Load_Calls_Deserialize()
        {
            var moq = new Mock<GameController>();

            moq.Object.Load("testload");

            moq.Verify(gc => gc.Deserialize(It.IsAny<string>()));
        }

        [Test]
        public void Save_Test()
        {
            GameController game = new GameController();
            game.Save("testload");

            FileAssert.Exists("testload");
        }

        [Test]
        public void Save_Calls_Serialize()
        {
            var moq = new Mock<GameController>();

            moq.Object.Save("testload");

            moq.Verify(gc => gc.Serialize());
        }

        [Test]
        public void Serialize_Formats_Data()
        {
            var gc = new GameController
            {
                Points = 20,
                Notes = 33,
                Player = new Player("img"),
                level = new Level()
            };

            var serializedData = gc.Serialize();

            Assert.AreEqual("Points:52|Notes:99|Player:Lives=3,PosX=20,PoxY=20,ImgPath=p2.png|Level:Difficulty=>EASY&NoteObjective=>90&GameObjects=>Speed=3,PosX=20,PoxY=20,ImgPath=o1.png;Speed=2,PosX=5,PoxY=10,ImgPath=o2.png", serializedData);
        }

        [Test]
        public void Deserialize_Sets_Properties()
        {
            var serializedData = "Points:52|Notes:99|Player:Lives=3,PosX=20,PoxY=20,ImgPath=p2.png|Level:Difficulty=>EASY&NoteObjective=>90&GameObjects=>Speed=3,PosX=20,PoxY=20,ImgPath=o1.png;Speed=2,PosX=5,PoxY=10,ImgPath=o2.png";

            var gc = new GameController();
            gc.Deserialize(serializedData);

            Assert.AreEqual(52, gc.Points);
            Assert.AreEqual(99, gc.Notes);
            Assert.IsNotNull(gc.Player);
            Assert.IsNotNull(gc.Level);
        }
    }
}
