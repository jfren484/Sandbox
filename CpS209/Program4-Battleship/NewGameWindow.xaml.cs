using System.Collections.Generic;
using System.Windows;

namespace Battleship
{
    /// <summary>
    /// Interaction logic for NewGameWindow.xaml
    /// </summary>
    public partial class NewGameWindow : Window
    {
        Game game;

        public NewGameWindow(bool cheat, int size)
        {
            InitializeComponent();

            game = new Game(cheat, size);
            game.PlayerGrid.PlaceShips();

            List<List<OceanGrid.WaterSpace>> lsts = new List<List<OceanGrid.WaterSpace>>();

            for (int i = 0; i < size; i++)
            {
                lsts.Add(new List<OceanGrid.WaterSpace>());

                for (int j = 0; j < size; j++)
                {
                    lsts[i].Add(OceanGrid.WaterSpace.Empty);
                }
            }

            playerGrid.ItemsSource = game.PlayerGrid.BoardState.GetBindable2DArray();

            lsts = new List<List<OceanGrid.WaterSpace>>();

            for (int i = 0; i < size; i++)
            {
                lsts.Add(new List<OceanGrid.WaterSpace>());

                for (int j = 0; j < size; j++)
                {
                    lsts[i].Add(OceanGrid.WaterSpace.Empty);
                }
            }

            aiGrid.ItemsSource = lsts;
        }
    }
}
