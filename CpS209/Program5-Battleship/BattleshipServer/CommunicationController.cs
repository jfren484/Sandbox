using Battleship.Model;
using Battleship.Model.Messaging;
using System;
using System.Collections.Generic;
using System.IO;
using System.Net;
using System.Net.Sockets;
using System.Threading.Tasks;

namespace BattleshipServer
{
    class CommunicationController
    {
        public const int Port = 6500;
        private readonly TcpListener listener;
        private readonly Action<string> logMsgAction;
        private readonly Dictionary<string, Game> games;

        public CommunicationController(Dictionary<string, Game> games, Action<string> logMsgAction)
        {
            this.games = games;
            this.logMsgAction = logMsgAction;

            listener = new TcpListener(IPAddress.Any, Port);
            listener.Start();
        }

        public bool ClientsPending()
        {
            return listener.Pending();
        }

        public async Task<TcpClient> WaitForClient()
        {
            return await listener.AcceptTcpClientAsync();
        }

        public Task HandleClientAsync(TcpClient tcpClient)
        {
            return Task.Run(() =>
            {
                try
                {
                    using (tcpClient)
                    {
                        string clientEndPoint = tcpClient.Client.RemoteEndPoint.ToString();
                        logMsgAction("Received connection request from " + clientEndPoint);

                        NetworkStream networkStream = tcpClient.GetStream();
                        StreamReader reader = new StreamReader(networkStream);
                        StreamWriter writer = new StreamWriter(networkStream);

                        WriteToClient(writer, "Welcome to Battleship. What game do you wish to join?");
                        var gameName = reader.ReadLine();
                        logMsgAction("Received data: " + gameName);

                        Game game = GetGameAndCreateIfDoesNotExist(gameName);
                        ResponseMessage responseMsg = new GameStateResponseMessage(game);
                        WriteToClient(writer, responseMsg.Serialize());

                        string requestStr = reader.ReadLine();
                        while (!string.IsNullOrWhiteSpace(requestStr))
                        {
                            logMsgAction("Received data: " + requestStr);

                            var requestMsg = RequestMessage.Deserialize(requestStr);
                            responseMsg = requestMsg.Execute(game);
                            string responseStr = responseMsg.Serialize();

                            WriteToClient(writer, responseStr);

                            requestStr = reader.ReadLine();
                        }
                    }

                    logMsgAction("Client closed connection.");
                }
                catch (Exception ex)
                {
                    logMsgAction(ex.Message);
                }
            });
        }

        private Game GetGameAndCreateIfDoesNotExist(string gameName)
        {
            Game game;
            if (games.TryGetValue(gameName, out game))
            {
                return game;
            }

            game = new Game(false, 10);
            game.PlayerGrid.AutoPlaceShips();
            game.AiGrid.AutoPlaceShips();
            games.Add(gameName, game);
            return game;
        }

        private void WriteToClient(StreamWriter writer, string responseStr)
        {
            logMsgAction("Transmitting data: " + responseStr);
            writer.WriteLine(responseStr);
            writer.Flush();
        }
    }
}
