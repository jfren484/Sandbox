using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;

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

            game = new Game(size);

            playerGrid.ItemsSource = WaterSpaceView.GetBindable2DArray(game.PlayerGrid.BoardState, false, true);
            aiGrid.ItemsSource = WaterSpaceView.GetBindable2DArray(game.AiGrid.BoardState, true, cheat);

            game.PlayerGrid.PlaceShips();
            game.AiGrid.PlaceShips();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            var button = (Button)sender;

            var view = (WaterSpaceView)button.Tag;

            if (view.IsAiGrid)
            {
                game.AiGrid.Attack(view.X, view.Y);

                ((Image)button.Content).GetBindingExpression(Image.SourceProperty).UpdateTarget();
            }
        }
    }
}
