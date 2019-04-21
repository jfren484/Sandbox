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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Symphony_Sprint
{
    /// <summary>
    /// Interaction logic for HighScoreEnter.xaml
    /// </summary>
    public partial class HighScoreEnter : Window
    {
        public HighScoreEnter()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            if (playerName.Text.Length > 15)
            {
                MessageBox.Show("Please only use up to 15 characters. -Love, Robin");
            }
            else if (String.IsNullOrWhiteSpace(playerName.Text))
            {
                MessageBox.Show("Please enter a name. Any name.");
            }
            else
            {
                HighScoreManager.AddNameAndScore(playerName.Text, Convert.ToInt32(gameScore.Text));
                HighScoreManager.SaveScore("HighScoresFile.txt");
                this.Close();
            }
        }
    }
}
