using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NUnit.Framework;

namespace Symphony_Sprint.Game_Model
{
    [TestFixture]
    public class HighScoreUnitTest
    {
        [Test]
        public void TestCreateStringOfScoresAndName_ReturnsString_Succesful()
        {
            string name = "billybobbybillbob";
            int highScore = 3000;
            HighScoreManager hs = new HighScoreManager();
            hs.AddNameandScore(name, highScore);
            Assert.IsTrue(hs.CreateStringOfScoresAndNames() == "billybobbybillbob......3000");
        }

        [Test]
        public void TestLoad_ReturnsText_Succesful()
        {
            string filename = "/highscoresfile.txt";
            HighScoreManager hs = new HighScoreManager();
            hs.LoadScore(filename);
            Assert.IsTrue(hs.HighScoreList.Count > 0);
        }

        [Test]
        public void TestSave_ReturnsNothings_Succesful()
        {
            string filename = "highscoresfile.txt";
            HighScoreManager hs = new HighScoreManager();
            hs.SaveScore(filename);
            Assert.IsTrue(File.Exists(Directory.GetCurrentDirectory() + filename));
        }

    }
}