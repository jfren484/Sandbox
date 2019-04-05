using System.Windows.Input;

namespace Symphony_Sprint.Game_Model.World_Objects
{
    public class Player : ISerialize
    {
        public bool isJumping;

        public int PosX { get; set; }
        public int PosY { get; set; }
        public int Lives { get; set; }
        public string ImgPath { get; set; }

        public Player(string img)
        {
            ImgPath = img;
        }

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

        public string Serialize()
        {
            return $"Lives={Lives},PosX={PosX},PosY={PosY},ImgPath={ImgPath}";
        }

        public void Deserialize(string data)
        {
            throw new System.NotImplementedException();
        }
    }
}