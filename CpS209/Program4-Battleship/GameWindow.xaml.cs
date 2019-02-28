using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Media;

namespace Battleship
{
    /// <summary>
    /// Interaction logic for GameWindow.xaml
    /// </summary>
    public partial class GameWindow : Window
    {
        Game game;
        GridButton[,] aiButtons;
        GridButton[,] playerButtons;

        //private int count4 = 0;
        //private const int max4 = 1;
        //private int count3 = 0;
        //private const int max3 = 1;
        //private int count2 = 0;
        //private const int max2 = 3;

        public GameWindow(bool cheat, int size)
        {
            InitializeComponent();
            game = new Game(cheat, size);
            aiButtons = new GridButton[game.Size, game.Size];
            playerButtons = new GridButton[game.Size, game.Size];
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            //SizeToContent = SizeToContent.WidthAndHeight;
            GeneratePlayerGrid();
            GenerateAiGrid();
            ShipPlace();
        }

        // Places five ships in the Grid
        private void ShipPlace()
        {
            game.PlayerGrid.PlaceShips();
            game.AiGrid.PlaceShips();
            DrawShipsToGrid(game.PlayerGrid, playerButtons);
            if (game.IsCheatOn == true)
            {
                DrawShipsToGrid(game.AiGrid, aiButtons);
            }
        }

        // Converts the Ship WaterSpaces from light blue to dark gray (for Ai Grid)
        private void DrawShipsToGrid(OceanGrid grid, GridButton[,] Buttons)
        {
            for (int x = 0; x < game.Size; x++)
            {
                for (int y = 0; y < game.Size; y++)
                {
                    if (grid.BoardState[x, y] == OceanGrid.WaterSpace.Ship)
                    {
                        Buttons[x, y].Background = Brushes.DarkGray;
                    }
                }
            }
        }

        // Creates a GridButton
        private GridButton ReturnButton(int x, int y)
        {
            var b = new GridButton
            {
                FontSize = 20,
                Margin = new Thickness(2)
            };
            var thickness = new Thickness
            {
                Top = 17,
                Left = 17,
                Right = 17,
                Bottom = 17
            };
            b.Padding = thickness;
            b.X = x;
            b.Y = y;
            b.Background = Brushes.LightBlue;
            b.SetBinding(ContentProperty, new Binding() { Source = game.PlayerGrid.BoardState[x, y] });
            return b;
        }

        // Returns a horizontal Stack Panel (for the Generate methods)
        private StackPanel ReturnHorizontalStackPanel()
        {
            var horizontalPanel = new StackPanel
            {
                Orientation = Orientation.Horizontal,
                HorizontalAlignment = HorizontalAlignment.Center
            };
            return horizontalPanel;
        }

        // Creates the Ai's Grid
        private void GenerateAiGrid()
        {
            for (int y = 0; y < game.Size; ++y)
            {
                StackPanel horizontalPanel = ReturnHorizontalStackPanel();
                aiPanel.Children.Add(horizontalPanel);

                for (int x = 0; x < game.Size; ++x)
                {
                    GridButton button = ReturnButton(x, y);
                    horizontalPanel.Children.Add(button);
                    aiButtons[x, y] = button;
                }
            }
        }

        // Creates the Player's Grid
        private void GeneratePlayerGrid()
        {
            for (int y = 0; y < game.Size; ++y)
            {
                StackPanel horizontalPanel = ReturnHorizontalStackPanel();
                playerPanel.Children.Add(horizontalPanel);
                for (int x = 0; x < game.Size; ++x)
                {
                    GridButton button = ReturnButton(x, y);
                    //button.Click += btnChooseShips_Click;
                    horizontalPanel.Children.Add(button);
                    playerButtons[x, y] = button;
                }
            }
        }

        // When the player clicks on a button in the PlayerGrid, it is converted to a ship
        //private void btnChooseShips_Click(object sender, RoutedEventArgs e)
        //{
        //    if (game.PlayerGrid.ShipsPlaced < 5)
        //    {
        //        GridButton btn = sender as GridButton;
        //        if (btn.Background == Brushes.LightBlue)
        //        {
        //            game.PlayerGrid.ShipsPlaced++;
        //            game.PlayerGrid.BoardState[btn.X, btn.Y] = OceanGrid.WaterSpace.Ship;
        //            game.PlayerGrid.PlayerGridState();
        //            btn.Background = Brushes.DarkGray;
        //            if (game.PlayerGrid.ShipsPlaced == 5)
        //            {
        //                ShipPlace();
        //            }
        //        }
        //    }

        //    if (game.PlayerGrid.ShipsPlaced < 5)
        //    {
        //        GridButton btn = sender as GridButton;

        //        int length = Convert.ToInt32(((ComboBoxItem)cbxShip.SelectedValue).Tag);
        //        bool orientationHorizontal = Convert.ToBoolean(((ComboBoxItem)cbxOrientation.SelectedValue).Tag);
        //        Ship ship = new Ship(length, orientationHorizontal);
        //        if (game.PlayerGrid.DetermineIfShipFits(ship, btn.X, btn.Y))
        //        {
        //            if (ship.Length == 4)
        //            {
        //                if (max4 > count4)
        //                {
        //                    game.PlayerGrid.PlaceShip(ship, btn.X, btn.Y);
        //                    count4++;
        //                    game.PlayerGrid.PlayerGridState();
        //                    DrawShipsToGrid(game.PlayerGrid, playerButtons);
        //                }
        //            }
        //            else if (ship.Length == 3)
        //            {
        //                if (max3 > count3)
        //                {
        //                    game.PlayerGrid.PlaceShip(ship, btn.X, btn.Y);
        //                    count3++;
        //                    game.PlayerGrid.PlayerGridState();
        //                    DrawShipsToGrid(game.PlayerGrid, playerButtons);
        //                }
        //            }
        //            else
        //            {
        //                if (max2 > count2)
        //                {
        //                    game.PlayerGrid.PlaceShip(ship, btn.X, btn.Y);
        //                    count2++;
        //                    game.PlayerGrid.PlayerGridState();
        //                    DrawShipsToGrid(game.PlayerGrid, playerButtons);
        //                }
        //            }

        //            if (game.PlayerGrid.ShipsPlaced == 5)
        //            {
        //                AiShipPlace();
        //            }
        //        }
        //    }
        //}
    }
}