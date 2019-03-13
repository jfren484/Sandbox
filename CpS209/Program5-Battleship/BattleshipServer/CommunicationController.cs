using Battleship.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Sockets;
using System.Text;
using System.Threading.Tasks;

namespace BattleshipServer
{
    class CommunicationController
    {
        public const int Port = 6500;
        private TcpListener listener;
        private Action<string> logMsgAction;
        private GameList gameList;

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
