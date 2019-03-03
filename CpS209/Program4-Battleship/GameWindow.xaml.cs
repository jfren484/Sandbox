using System;
using System.Windows;
using System.Windows.Controls;
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

        public GameWindow(bool cheat, int size)
        {
            InitializeComponent();
            game = new Game(cheat, size);
            aiButtons = new GridButton[game.Size, game.Size];
            playerButtons = new GridButton[game.Size, game.Size];
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            SizeToContent = SizeToContent.WidthAndHeight;
            GeneratePlayerGrid();
            GenerateAiGrid();
            AutoShipPlace();
        }

        private void btnAttackClick_Click(object sender, RoutedEventArgs e)
        {
            var btn = sender as GridButton;

            OceanGrid.WaterSpace result = game.AiGrid.Attack(btn.Location);

            if (result == OceanGrid.WaterSpace.Hit)
            {
                btn.Background = Brushes.Red;
            }
            else if (result == OceanGrid.WaterSpace.Miss)
            {
                btn.Background = Brushes.DarkBlue;
            }
        }

        // Places five ships in the Grid
        private void AutoShipPlace()
        {
            game.PlayerGrid.AutoPlaceShips();
            game.AiGrid.AutoPlaceShips();
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
            b.Location = new Location(x, y);
            b.Background = Brushes.LightBlue;
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
                    button.Click += btnAttackClick_Click;
                    horizontalPanel.Children.Add(button);
                    aiButtons[x, y] = button;
                    //aiButtons[x, y].isAiGrid = true;
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
                    horizontalPanel.Children.Add(button);
                    playerButtons[x, y] = button;
                    //playerButtons[x, y].isAiGrid = false;
                }
            }
        }
    }
}