using System;
using System.Windows;

namespace Battleship
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public bool cheat;

        public MainWindow()
        {
            InitializeComponent();
        }

        private void BtnStart_Click(object sender, RoutedEventArgs e)
        {
            int size = Convert.ToInt32(sldBoardSize.Value);
            GameWindow gameWin = new GameWindow(cheat ,size);
            gameWin.Show();
        }

        private void ChkCheat_Checked(object sender, RoutedEventArgs e)
        {
            cheat = true;
        }

        private void ChkCheat_Unchecked(object sender, RoutedEventArgs e)
        {
            cheat = false;
        }
    }
}
