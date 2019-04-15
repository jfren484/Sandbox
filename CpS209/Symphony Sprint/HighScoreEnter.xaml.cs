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
    public partial class HighScoreEnter : Page
    {
        public HighScoreEnter()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            HighScoreManager.AddNameAndScore(playerName.Text, Convert.ToInt32(gameScore.Text));
        }
    }
}
