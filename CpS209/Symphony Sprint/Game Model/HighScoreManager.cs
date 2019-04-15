using Symphony_Sprint.Game_Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

namespace Symphony_Sprint
{
    class HighScoreManager
    {
        public static List<HighScore> HighScoreList{get; set;}
        public static string HighScoreText { get; set; }

        //adds the name of the players and their score to a list in sorted order
        public static void AddNameAndScore(string name, int score)
        {
            HighScore newHS = new HighScore(name, score);
            List<HighScore> newList = new List<HighScore> { newHS };
            if (HighScoreList == null)
            {
                HighScoreList = newList;
            }
            else
            {
                HighScoreList.Add(newHS);
            }
        }

        //saves all highscores to a text file
        public static void SaveScore()
        {
            using (StreamWriter sw = new StreamWriter("SymphonySprintHighScores.txt"))
            {
                foreach (HighScore hs in HighScoreList)
                {
                    sw.WriteLine("{0},{1}", hs.Name, hs.Score);
                }
            }
        }

        //loads scores from a text file
        public static void LoadScore()
        {
            using (StreamReader sr = new StreamReader("SymphonySprintHighScores.txt"))
            {
                foreach (HighScore hs in HighScoreList)
                {
                    string[] list = sr.ReadLine().Split(',');
                    AddNameAndScore(list[0], Convert.ToInt32(list[1]));
                }
            }

        }

        //takes scores and names and makes string to be displayed on the window
        public static void CreateStringOfScoresAndNames()
        {
            if (HighScoreList == null)
            {
                HighScoreList = new List<HighScore> { };
            }
            for (int i = 0; i < HighScoreList.Count; ++i)
            {
                string name = Convert.ToString(HighScoreList[i].Name);
                string score = Convert.ToString(HighScoreList[i].Score);
                string finalString = name + "......" + score + " /n";
                HighScoreText = HighScoreText + finalString;
            }

        }

    }   
}
