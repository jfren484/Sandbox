using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Symphony_Sprint
{
    /// <summary>
    /// Interaction logic for GameOverWindow.xaml
    /// </summary>
    public partial class GameOverWindow : Window
    {
        public int scorenum;
        public GameOverWindow(int scoreNum)
        {
            InitializeComponent();
            scorenum = scoreNum;
        }
        private void btnOK_Click(object sender, RoutedEventArgs e)
        {
            if (HighScoreManager.IsHighScore(scorenum))
            {
                HighScoreEnter HSEnter = new HighScoreEnter();
                HSEnter.gameScore.Text = Convert.ToString(scorenum);
                HSEnter.Show();
                this.Close();
            }
        }
    }
}
