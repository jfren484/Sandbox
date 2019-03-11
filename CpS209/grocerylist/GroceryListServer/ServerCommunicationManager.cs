using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Sockets;
using System.Text;
using System.Threading.Tasks;
using GroceryListModel;
using GroceryListComm;

namespace GroceryListServer
{
    class ServerCommunicationManager
    {

        public const int Port = 5500;
        private Action<string> logMessageAction;
        private TcpListener listener;

        private GroceryList groceryList;


        public ServerCommunicationManager(GroceryList list, Action<string> logMessageAction)
        {
            this.logMessageAction = logMessageAction;
            groceryList = list;
            listener = new TcpListener(IPAddress.Any, Port);
            listener.Start();
        }

        public TcpClient WaitForClient()
        {
            return listener.AcceptTcpClient();
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
                        logMessageAction("Received connection request from " + clientEndPoint);

                        NetworkStream networkStream = tcpClient.GetStream();
                        StreamReader reader = new StreamReader(networkStream);
                        StreamWriter writer = new StreamWriter(networkStream);

                        string requestStr = reader.ReadLine();
                        while (requestStr != null)
                        {
                            logMessageAction("Received data: " + requestStr);

                            var requestMsg = RequestMessage.Deserialize(requestStr);
                            ResponseMessage responseMsg = requestMsg.Execute(groceryList);
                            string responseStr = responseMsg.Serialize();

                            logMessageAction("Transmitting data: " + responseStr);
                            writer.WriteLine(responseStr);
                            writer.Flush();
                            requestStr = reader.ReadLine();
                        }
                    }

                    // Client closed connection
                    logMessageAction("Client closed connection.");
                }
                catch (Exception ex)
                {
                    logMessageAction(ex.Message);
                }

            });
        }
    }
}
