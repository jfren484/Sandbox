using Battleship.Model;
using System;
using System.Collections.Generic;
using System.Windows;
using System.Windows.Threading;

namespace BattleshipServer
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private readonly CommunicationController commManager;
        private DispatcherTimer timer = new DispatcherTimer();

        public MainWindow()
        {
            InitializeComponent();

            var games = new Dictionary<string, Game> { { "demo", Game.CreateDemoState() } };
            commManager = new CommunicationController(games, Log);
            Log("Listening on port " + CommunicationController.Port);

            timer.Interval = TimeSpan.FromMilliseconds(10);
            timer.Tick += Timer_Tick;
            timer.IsEnabled = true;
        }

        private async void Timer_Tick(object sender, EventArgs e)
        {
            if (!commManager.ClientsPending())
            {
                return;
            }

            var client = await commManager.WaitForClient();
            Log("Received incoming connection.");
            await commManager.HandleClientAsync(client);
        }

        private void Log(string msg)
        {
            Dispatcher.Invoke(() =>
            {
                lblLogMessages.Text += $"{DateTime.Now}: {msg}\n";
                scrollMessages.ScrollToBottom();
            });
        }
    }
}
