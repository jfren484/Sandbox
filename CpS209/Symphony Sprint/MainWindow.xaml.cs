using Symphony_Sprint.Properties;
using System.Windows;

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
            ChooseDifficulty dWin = new ChooseDifficulty();
            dWin.Show();
            //GameWindow gwin = new GameWindow();
            //gwin.Show();
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

        private void btnAbout_CLick(object sender, RoutedEventArgs e)
        {
            About aboutWin = new About();
            aboutWin.Show();
        }
    }
}
