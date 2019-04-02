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

namespace Symphony_Sprint
{
  
    public partial class MainWindow : Window
    {
        Player player;
        public MainWindow()
        {
            InitializeComponent();
            this.KeyDown += new KeyEventHandler(player.KeyIsDown);
            this.KeyUp += new KeyEventHandler(player.KeyIsUp);
        }
    }
}
