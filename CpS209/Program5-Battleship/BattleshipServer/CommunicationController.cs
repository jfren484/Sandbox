using Battleship.Model;
using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Sockets;

namespace BattleshipServer
{
    class CommunicationController
    {
        public const int Port = 6500;
        private TcpListener listener;
        private Action<string> logMsgAction;
        private Dictionary<string, Game> games;

        public CommunicationController(Action<string> logMsgAction)
        {
            this.logMsgAction = logMsgAction;
            listener = new TcpListener(IPAddress.Any, Port);
            listener.Start();
        }

        public TcpClient WaitForClient()
        {
            return listener.AcceptTcpClient();
        }
    }
}
