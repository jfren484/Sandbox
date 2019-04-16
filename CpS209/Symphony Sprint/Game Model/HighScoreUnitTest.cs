using System.IO;
using NUnit.Framework;

namespace Symphony_Sprint.Game_Model
{
    [TestFixture]
    public class HighScoreUnitTest
    {
        [Test]
        public void Testcreatestringofscoresandname_returnsstring_succesful()
        {
            string name = "billybobbybillbob";
            int highscore = 3000;
            HighScoreManager.AddNameAndScore(name, highscore);
            HighScoreManager.CreateStringOfScoresAndNames();
            Assert.IsTrue(HighScoreManager.HighScoreText == "billybobbybillbob......3000 /n");
        }

        [Test]
        public void Testload_returnstext_succesful()
        {
            string name = "billybobbybillbob";
            int highscore = 3000;
            HighScoreManager.AddNameAndScore(name, highscore);
            HighScoreManager.SaveScore(TestContext.CurrentContext.TestDirectory);
            HighScoreManager.LoadScore(TestContext.CurrentContext.TestDirectory);
            Assert.IsTrue(HighScoreManager.HighScoreList.Count > 0);
        }

        [Test]
        public void Testsave_returnsnothings_succesful()
        {
            string name = "billybobbybillbob";
            int highscore = 3000;
            HighScoreManager.AddNameAndScore(name, highscore);
            HighScoreManager.SaveScore(TestContext.CurrentContext.TestDirectory);
            Assert.IsTrue(File.Exists(TestContext.CurrentContext.TestDirectory + "SymphonySprintHighScores.txt"));
        }
    }
}