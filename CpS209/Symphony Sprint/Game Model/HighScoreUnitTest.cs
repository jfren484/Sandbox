using System;
using System.Collections.Generic;
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
        public void CreateStringOfScoresAndName_ReturnsString_Succesful()
        {
            List<string> names = new List<string>();
            List<int> hsList = new List<int>();

            hsList.Add(3000);
            hsList.Add(2300);
            hsList.Add(500);

            names.Add("billybob");
            names.Add("bobbybill");
            names.Add("billybobbybillbob");
            HighScore hs = new HighScore();
            hs.HSList = hsList;
            hs.Names = names;
            Assert.IsTrue(hs.CreateStringOfScoresAndNames() == "billybob......3000, bobbybill......2300, billybobbybillbob......500");
        }
    }
}