using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Sockets;
using System.Text;
using System.Threading.Tasks;

namespace BattleshipServer
{
    class CommunicationController
    {
        public const int Port = 6500;
        private TcpListener listener;
    }
}
