using Battleship.Model;
using System;
using System.Collections.Generic;
using System.IO;
using System.Net;
using System.Net.Sockets;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace BattleshipServer
{
    class CommunicationController
    {
        public const int Port = 6500;
        private TcpListener listener;
        private Action<string> logMsgAction;

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
                        WriteToClient(writer, game.Serialize());

                        string requestStr = reader.ReadLine();
                        while (requestStr != null)
                        {
                            logMsgAction("Received data: " + requestStr);

                            if (requestStr == "GameState")
                            {
                                WriteToClient(writer, game.Serialize());
                            }
                            else if (requestStr.Length == 10 && requestStr.StartsWith("Attack ") && char.IsDigit(requestStr[7]) && requestStr[8] == ' ' && char.IsDigit(requestStr[9]))
                            {
                                int y = requestStr[7] - '0';
                                int x = requestStr[9] - '0';

                                AttackResponseType result = game.IsEnded ? AttackResponseType.Invalid : game.AiGrid.Attack(new Location(x, y));
                                if (result == AttackResponseType.Dup || result == AttackResponseType.Invalid)
                                {
                                    WriteToClient(writer, $"AttackResponse {result.ToString().ToLower()}");
                                }
                                else
                                {
                                    Location playerLocation = game.Ai.DetermineNextAttack();
                                    game.PlayerGrid.Attack(playerLocation);
                                    WriteToClient(writer, $"AttackResponse {result.ToString().ToLower()} {playerLocation.Y} {playerLocation.X}\n");
                                }
                            }

                            requestStr = reader.ReadLine();
                        }
                    }

                    // Client closed connection
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
