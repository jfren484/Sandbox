using System;
using System.Collections.Generic;
using System.Linq;
using System.Media;
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

namespace Battleship
{
    /// <summary>
    /// Interaction logic for PlayerVictory.xaml
    /// </summary>
    public partial class PlayerVictory : Window
    {
        public SoundPlayer playerVictorySound = new SoundPlayer("BOTW_Fanfare_HeartContainer.wav");
        //Sounds sounds = new Sounds();
        public PlayerVictory()
        {
            InitializeComponent();
            playerVictorySound.Play();
        }
    }
}
