using Symphony_Sprint.Game_Model;
using Symphony_Sprint.Game_Model.World_Objects;
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
using System.Resources;
using Symphony_Sprint.Properties;

namespace Symphony_Sprint
{
  
    public partial class MainWindow : Window
    {
        System.Media.SoundPlayer sPlayerMW;
        public MainWindow()
        {
            InitializeComponent();
            sPlayerMW = new System.Media.SoundPlayer(Properties.Resources.musical_symphony_orchestra_warming_up_before_concert);
            sPlayerMW.Play();
        }

        private void Start_Click(object sender, RoutedEventArgs e)
        {
            GameWindow gwin = new GameWindow();
            gwin.Show();
        }

        private void HighScores_Click(object sender, RoutedEventArgs e)
        {
            HighScoreWindow highScoreWindow = new HighScoreWindow();
            highScoreWindow.Show();
        }

        private void btnHelp_Click(object sender, RoutedEventArgs e)
        {
            Help helpWindow = new Help();
            helpWindow.Show();
        }
    }
}
