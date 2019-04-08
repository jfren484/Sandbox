using Symphony_Sprint.Game_Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Symphony_Sprint
{
    class HighScoreManager
    {
        public List<HighScore> HighScoreList { get; set; }

        //adds the name of the players and their score to a list in sorted order
        public void AddNameandScore(string name, int score)
        {

        }

        //saves all highscores to a text file
        public void SaveScore(string filename)
        {

        }

        //loads scores from a text file
        public void LoadScore(string filename)
        {

        }

        //takes scores and names and makes string to be displayed on the window
        public string CreateStringOfScoresAndNames()
        {
            return "a";
        }

    }   
}
