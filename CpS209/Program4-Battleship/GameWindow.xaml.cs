using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;

namespace Battleship
{
    /// <summary>
    /// Interaction logic for GameWindow.xaml
    /// </summary>
    public partial class GameWindow : Window, IGameObserver
    {
        Game game;
        GridButton[,] aiButtons;
        GridButton[,] playerButtons;
        Ai ai;

        public GameWindow(bool cheat, int size)
        {
            InitializeComponent();
            game = new Game(this, cheat, size);
            aiButtons = new GridButton[game.Size, game.Size];
            playerButtons = new GridButton[game.Size, game.Size];
            ai = new Ai(size) { Thinking = "" };
            lblThinking.DataContext = ai;
        }

        public void NotifySpaceChanged()
        {
            DrawShipsToGrid(game.PlayerGrid, playerButtons);
            DrawShipsToGrid(game.AiGrid, aiButtons);
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            SizeToContent = SizeToContent.WidthAndHeight;
            GeneratePlayerGrid();
            GenerateAiGrid();
            AutoShipPlace();
        }

        private async void btnAttackClick_Click(object sender, RoutedEventArgs e)
        {
            var btn = sender as GridButton;
            OceanSpaceType result = game.AiGrid.Attack(btn.Location);
            if (result == OceanSpaceType.Hit)
            {
                btn.Background = Brushes.Red;
                game.AiGrid.NumOfShips--; // Should be fine editing this now since the ship placement has finished already.
                if (game.AiGrid.NumOfShips == 0)
                {
                    DisplayWinner();
                }
                else
                {
                    await AiAttackAsync();
                }
            }
            else if (result == OceanSpaceType.Miss)
            {
                btn.Background = Brushes.Blue;
                await AiAttackAsync();
            }
        }

        private async Task AiAttackAsync()
        {
            ai.Thinking = " - Thinking...";
            await Task.Run(() => Thread.Sleep(1000)); // Make Ai appear as if it's thinking
            Location location = ai.DetermineNextAttack();
            var aiResult = game.PlayerGrid.Attack(location);
            if (aiResult == OceanSpaceType.Hit)
            {
                playerButtons[location.X, location.Y].Background = Brushes.Red;
                game.PlayerGrid.NumOfShips--; // Should be fine editing this now since the ship placement has finished already.
                if (game.PlayerGrid.NumOfShips == 0)
                {
                    DisplayWinner();
                }
            }
            else if (aiResult == OceanSpaceType.Miss)
            {
                playerButtons[location.X, location.Y].Background = Brushes.Blue;
            }
            ai.Thinking = "";
        }

        private void DisplayWinner()
        {
            // TODO
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
                    Brush brush = Brushes.LightBlue;
                    switch (grid.BoardState[x, y].OceanSpaceType)
                    {
                        case OceanSpaceType.Ship:
                            brush = Brushes.DarkGray;
                            break;
                        case OceanSpaceType.Hit:
                            brush = Brushes.Red;
                            break;
                        case OceanSpaceType.Miss:
                            brush = Brushes.Blue;
                            break;
                    }

                    Buttons[x, y].Background = brush;
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
            b.Location = new Location(x, y);
            b.Padding = thickness;
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
                    game.AiGrid.BoardState[x, y] = new OceanSpace(this, OceanSpaceType.Empty);
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
                    game.PlayerGrid.BoardState[x, y] = new OceanSpace(this, OceanSpaceType.Empty);
                    horizontalPanel.Children.Add(button);
                    playerButtons[x, y] = button;
                    //playerButtons[x, y].isAiGrid = false;
                }
            }
        }
    }
}