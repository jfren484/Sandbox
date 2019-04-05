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

namespace Symphony_Sprint
{
  
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            this.KeyDown += new KeyEventHandler(GameController.Instance.Player.KeyIsDown);
            this.KeyUp += new KeyEventHandler(GameController.Instance.Player.KeyIsUp);
            GameWindow gwin = new GameWindow();
            gwin.Show();
        }
    }
}
