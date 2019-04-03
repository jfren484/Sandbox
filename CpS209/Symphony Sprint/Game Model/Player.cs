using System.Windows.Input;

namespace Symphony_Sprint.Game_Model.World_Objects
{
    public class Player
    {
        public bool isJumping;

        //Events are registered in MainWindow.xaml.cs
        public void KeyIsDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Space)
            {
                isJumping = true;
            }
        }

        public void KeyIsUp(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Space)
            {
                isJumping = false;
            }
        }

        
    }
}