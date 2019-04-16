using Microsoft.Win32;
using Symphony_Sprint.Game_Model;
using System;
using System.Diagnostics;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Threading;
using WpfAnimatedGif;

namespace Symphony_Sprint
{
    public partial class GameWindow : Window
    {
        public static DispatcherTimer gameTimer;
        public static DispatcherTimer displayTimer;
        public int seconds = 0;
        int min = 0;
        public int noteNum = 20;
        // public int livesLeft = 3;
        private OpenFileDialog loadDialog = new OpenFileDialog();
        private SaveFileDialog saveDialog = new SaveFileDialog();

        BitmapImage source1;
        BitmapImage source2;
        BitmapImage source3;

        System.Media.SoundPlayer sPlayer;

        public GameWindow()
        {
            InitializeComponent();
            this.KeyDown += new KeyEventHandler(GameController.Instance.Player.KeyIsDown);
            this.KeyDown += new KeyEventHandler(this.KeyIsDown);
            GameController.Instance.Player.PosX = 200;
            GameController.Instance.Player.PosY = 50;
            GameController.Instance.Player.Lives = 3;
            sPlayer = new System.Media.SoundPlayer(Properties.Resources.audio_hero_On_The_Ball_SIPML_K_04_25_01);
            sPlayer.Play();
            this.Closing += GameWindow_Closing;
        }

        private void GameWindow_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            sPlayer.Stop();
        }

        public void Window_Loaded(object sender, EventArgs e)
        {
            //Load images on screen
            source1 = new BitmapImage(new Uri("/Graphics/heart-1.png.png", UriKind.Relative));
            source2 = new BitmapImage(new Uri("/Graphics/heart-1.png.png", UriKind.Relative));
            source3 = new BitmapImage(new Uri("/Graphics/heart-1.png.png", UriKind.Relative));

            //time.Source = new BitmapImage(new Uri("/Graphics/time-1.png.png", UriKind.Relative));
            lives.Source = new BitmapImage(new Uri("/Graphics/lives-1.png.png", UriKind.Relative));
            time.Source = new BitmapImage(new Uri("/Graphics/time-1.png.png", UriKind.Relative));
            heart1.Source = source1;
            heart2.Source = source2;
            heart3.Source = source3;
            scoreImg.Source = new BitmapImage(new Uri("/Graphics/score-1.png.png", UriKind.Relative));

            gameTimer = new DispatcherTimer { Interval = new TimeSpan(0, 0, 0, 0, 5) };
            gameTimer.Tick += GameTimer_Tick;

            displayTimer = new DispatcherTimer { Interval = new TimeSpan(0, 0, 1) };
            displayTimer.Tick += DisplayTimer_Tick;
            GameController.Instance.LargoLevel();
            //SetupGame();
            UpdateScreen();
      
            gameTimer.Start();
            displayTimer.Start();
        }

        private void DisplayTimer_Tick(object sender, EventArgs e)
        {           
            seconds++;
        }

        //Check if the game is over or not..
        //If is not over then update screen...
        private void GameTimer_Tick(object sender, EventArgs e)
        {
            if (GameController.Instance.isGameOver == false)
            {
                UpdateScreen();
            }
        }

        private void UpdateScreen()
        {
            //Update Points
            //Update Health
            //Update NoteObjective
            //Update Level when needed.

            if (GameController.Instance.Player.Lives == 2)
            {
                heart1.Source = new BitmapImage(new Uri("/Graphics/heartDead-1.png.png", UriKind.Relative));
            } else if (GameController.Instance.Player.Lives == 1)
            {
                heart2.Source = new BitmapImage(new Uri("/Graphics/heartDead-1.png.png", UriKind.Relative));
            } else if (GameController.Instance.Player.Lives == 0)
            {
                heart3.Source = new BitmapImage(new Uri("/Graphics/heartDead-1.png.png", UriKind.Relative));
                MessageBox.Show("Game Over");
                GameController.Instance.isGameOver = true;
                this.Close();
                if (HighScoreManager.IsHighScore(Convert.ToInt32(scoreNum.Content)))
                {
                    HighScoreEnter HSEnter = new HighScoreEnter();
                    HSEnter.gameScore.Text = Convert.ToString(scoreNum.Content);
                    HSEnter.Show();
                }
            }
            
            if (seconds < 10)
            {
                timeNum.Content = min + ":0" + seconds;
            }
            else if (seconds > 60)
            {
                min++;
                seconds = 0;
                timeNum.Content = min + ":" + seconds;
            }
            else
            {
                timeNum.Content = min + ":" + seconds;
            }

            GameCanvas.Children.Clear();

            //Piano
            var piano = new Image();
            piano.Source = new BitmapImage(new Uri("/Graphics/pianoDouble-1.png.png", UriKind.Relative));
            piano.Height = 54;
            piano.Stretch = Stretch.UniformToFill;
            Canvas.SetBottom(piano, 0);
            GameCanvas.Children.Add(piano);

            //Player
            var playerSource = new BitmapImage(new Uri(String.Format("/Graphics/{0}", GameController.Instance.Player.ImgPath), UriKind.Relative));
            var playerImg = new Image();
            playerImg.Height = 50;
            playerImg.Width = 45;
            playerImg.Stretch = Stretch.Fill;
            ImageBehavior.SetAnimatedSource(playerImg, playerSource);
            GameCanvas.Children.Add(playerImg);

            //Sets the players position depending on its state. 
            GameController.Instance.Player.UpdatePosition();
            Canvas.SetLeft(playerImg, GameController.Instance.Player.PosX);
            Canvas.SetBottom(playerImg, GameController.Instance.Player.PosY);
            //End of player code

            //Sparkle Image
            var sparkle = new Image();
            var sparkleSource = new BitmapImage(new Uri("/Graphics/sparkle.gif", UriKind.Relative));
            ImageBehavior.SetAnimatedSource(sparkle, sparkleSource);
            //End of Sparkle
            //Game Object Code
            //Loops through each game object and sets there custom position.
            foreach (GameObject obj in GameController.Instance.Level.GameObjects.ToList())
            {
                var objectSource = new BitmapImage(new Uri(String.Format("/Graphics/{0}", obj.ImgPath), UriKind.Relative));
                Image objImg = new Image();
                objImg.Source = objectSource;

                if (obj.posX > 1190)
                {
                    objImg.Visibility = Visibility.Hidden;
                }

                if(obj.posX < 10)
                {
                    //objImg.Visibility = Visibility.Hidden;
                    GameController.Instance.Level.GameObjects.Remove(obj);
                }
               
                if (obj.ImgPath == "trebleClef-7.png.png")
                {
                    objImg.Height = 60;
                    objImg.Width = 100;
                }
                else
                {
                    objImg.Height = 40;
                    objImg.Width = 60;
                }                
                
                objImg.Uid = "GameObject";
                GameCanvas.Children.Add(objImg);
                obj.posX -= obj.Speed;

                Canvas.SetLeft(objImg, obj.posX);
                Canvas.SetBottom(objImg, obj.posY);
                //End of Game Object Code

                //Collision Code Start
                var objects = new Rect(

                    Convert.ToDouble(Canvas.GetLeft(objImg)),
                        Convert.ToDouble(Canvas.GetBottom(objImg)),
                        Convert.ToDouble(objImg.Width),
                        Convert.ToDouble(objImg.Height)
                    );

                var player = new Rect(
                        Convert.ToDouble(Canvas.GetLeft(playerImg)),
                        Convert.ToDouble(Canvas.GetBottom(playerImg)),
                        Convert.ToDouble(playerImg.Width),
                        Convert.ToDouble(playerImg.Height)
                    );

                if(objects.Left <= player.Right && objects.Right >= player.Left && objects.Bottom >= player.Top && objects.Top <= player.Bottom)
                {
                    if (obj.ImgPath == "flat-1.png.png" || obj.ImgPath == "sharp-1.png.png")
                    {
                        //Checks if cheat mode is enabled.
                        if (GameController.Instance.isCheatEnabled == true)
                        {
                            return;
                        }
                        //Takes a life and removes enemy from game.
                        Debug.WriteLine(obj.posX + " and " + obj.posY + " player: x: " + GameController.Instance.Player.PosX + " y: " + GameController.Instance.Player.PosY);
                        Debug.WriteLine("Rect: Object X: " + objects.X + " and " + objects.Y + " Player: " + player.X + " and " + player.Y);
                        Debug.WriteLine(obj.ImgPath);
                        GameController.Instance.Player.Lives--;
                        GameController.Instance.Level.GameObjects.Remove(obj);
                        GameCanvas.Children.Remove(objImg);
                    }
                    else
                    {
                        GameCanvas.Children.Remove(objImg);
                        GameController.Instance.Level.GameObjects.Remove(obj);
                        Debug.WriteLine("Collision: " + "Rect: Object X: " + objects.X + " and " + objects.Y + " Player: " + player.X + " and " + player.Y);
                        noteNum--;
                        GameController.Instance.Points += 200;
                        scoreNum.Content = GameController.Instance.Points;
                        noteObj.Content = noteNum;
                    } 
                }
                //Collision code end
            }
        }

        public void KeyIsDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.C)
            {
                if (GameController.Instance.isCheatEnabled == false)
                {
                    GameController.Instance.isCheatEnabled = true;
                } else
                {
                    GameController.Instance.isCheatEnabled = false;
                }
            }
            else if (e.Key == Key.S)
            {
                keyS_press();
            }
            else if (e.Key == Key.L)
            {
                keyL_press();
            }
        }

        private void keyS_press()
        {
            gameTimer.Stop();

            saveDialog.InitialDirectory = System.IO.Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "GameSaves");
            if (saveDialog.ShowDialog() == true)
            {
                GameController.Instance.Save(saveDialog.FileName);
                loadDialog.FileName = saveDialog.FileName;
            }

            gameTimer.Start();
        }

        private void keyL_press()
        {
            gameTimer.Stop();

            this.KeyDown -= new KeyEventHandler(GameController.Instance.Player.KeyIsDown);

            loadDialog.InitialDirectory = System.IO.Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "GameSaves");
            if (loadDialog.ShowDialog() == true)
            {
                GameController.Instance.Load(loadDialog.FileName);
            }

            this.KeyDown += new KeyEventHandler(GameController.Instance.Player.KeyIsDown);

            gameTimer.Start();
        }
    }
}
