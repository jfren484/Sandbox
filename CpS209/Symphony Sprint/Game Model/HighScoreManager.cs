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
        public static List<HighScore> HighScoreList { get; set; } = new List<HighScore>();
        public static string HighScoreText { get; set; }

        //adds the name of the players and their score to a list in sorted order
        public static void AddNameAndScore(string name, int score)
        {
            HighScore newHS = new HighScore(name, score);

            if (IsHighScore(score))
            {
                if (HighScoreList.Count >= 5)
                {
                    HighScoreList.RemoveAt(HighScoreList.Count - 1);
                }
                HighScoreList.Add(newHS);
                HighScoreList.Sort();

            }
        }

        //saves all highscores to a text file
        public static void SaveScore(string dir)
        {

            using (StreamWriter sw = new StreamWriter(dir))
            {
                foreach (HighScore hs in HighScoreList)
                {
                    sw.WriteLine("{0},{1}", hs.Name, hs.Score);
                }
            }
        }

        //loads scores from a text file
        public static void LoadScore(string dir)
        {
            HighScoreList = new List<HighScore> { };
            if (! File.Exists(dir))
            {
                return;
            }
            else
            {
                string line;
                using (StreamReader sr = new StreamReader(dir))
                {
                    while ((line = sr.ReadLine()) != null)
                    {
                        string[] list = line.Split(',');
                        AddNameAndScore(list[0], Convert.ToInt32(list[1]));
                    }
                }
            }
        }

        //checks if new score is greater than lowest score. returns bool. 
        public static bool IsHighScore(int score)
        {
            HighScoreList.Sort();
            return HighScoreList.Count < 5 || score > HighScoreList[HighScoreList.Count - 1].Score;
        }
    }
}