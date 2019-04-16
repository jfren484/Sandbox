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

namespace Symphony_Sprint.Properties
{
    /// <summary>
    /// Interaction logic for Help.xaml
    /// </summary>
    public partial class Help : Window
    {
        public string helpM;
        public Help()
        {
            InitializeComponent();
            helpM = "Click start to start the game. Press the space key to jump to collect notes or avoid accidentals. Press space key while still jumping to double jump.";
        }
        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            helpM.PadRight(20);
            txtHelp.Text = helpM;
            txtHelp.Padding = new Thickness(20);
            txtHelp.FontFamily = new FontFamily("SH Pinscher");
        }
        //GameControle.Instance.Points
    }
}
