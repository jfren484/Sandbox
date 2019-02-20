using System.Windows;
using System.Windows.Controls;

namespace Battleship
{
    /// <summary>
    /// Interaction logic for GameWindow.xaml
    /// </summary>
    public partial class GameWindow : Window
    {
        OceanGrid aiGrid = new OceanGrid(Game.Size);
        OceanGrid playerGrid = new OceanGrid(Game.Size);

        GridButton[,] aiButtons = new GridButton[Game.Size, Game.Size];
        GridButton[,] playerButtons = new GridButton[Game.Size, Game.Size];

        public GameWindow()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            SizeToContent = SizeToContent.Width;
            GenerateAiGrid();
            GeneratePlayerGrid();
        }

        private void btnChooseShips_Click(object sender, RoutedEventArgs e)
        {
            if (playerGrid.ShipsPlaced < 5)
            {
                GridButton btn = sender as GridButton;
                if ((string)btn.Content == "~")
                {
                    btn.Content = "n";
                    playerGrid.ShipsPlaced++;
                    playerGrid.BoardState[btn.X, btn.Y] = OceanGrid.WaterSpace.Ship;
                    if (playerGrid.ShipsPlaced == 5)
                    {
                        AiShipPlace();
                    }
                }
            }
        }

        private void AiShipPlace()
        {
            aiGrid.PlaceShips();
            // TODO: Turn cells that ships were placed in from Empty to Ship
            if (Game.IsCheatOn == true)
            {
                // TODO: This should probably be pulled out to a method called DrawGrid or something like that
                for (int x = 0; x < Game.Size; x++)
                {
                    for (int y = 0; y < Game.Size; y++)
                    {
                        if (aiGrid.BoardState[x, y] == OceanGrid.WaterSpace.Ship)
                        {
                            aiButtons[x, y].Content = "n";
                        }
                    }
                }
            }
        }

        private GridButton ReturnButton(int x, int y)
        {
            var b = new GridButton
            {
                Content = "~",
                FontSize = 20,
                Margin = new Thickness(4),
                Padding = new Thickness
                {
                    Left = 15,
                    Right = 15,
                    Bottom = 5
                },
                X = x,
                Y = y
            };
            return b;
        }

        private StackPanel ReturnHorizontalStackPanel()
        {
            var horizontalPanel = new StackPanel
            {
                Orientation = Orientation.Horizontal,
                HorizontalAlignment = HorizontalAlignment.Center
            };
            return horizontalPanel;
        }

        private void GenerateAiGrid()
        {
            for (int row = 0; row < 5; ++row)
            {
                StackPanel horizontalPanel = ReturnHorizontalStackPanel();
                aiPanel.Children.Add(horizontalPanel);

                for (int x = 0; x < aiGrid.NumOfShips; ++x)
                {
                    GridButton button = ReturnButton(x, row);
                    horizontalPanel.Children.Add(button);
                    aiButtons[x, row] = button;
                }
            }
        }

        private void GeneratePlayerGrid()
        {
            for (int row = 0; row < 5; ++row)
            {
                StackPanel horizontalPanel = ReturnHorizontalStackPanel();
                playerPanel.Children.Add(horizontalPanel);
                for (int x = 0; x < playerGrid.NumOfShips; ++x)
                {
                    GridButton button = ReturnButton(x, row);
                    button.Click += btnChooseShips_Click;
                    horizontalPanel.Children.Add(button);
                    playerButtons[x, row] = button;
                }
            }
        }
    }
}