using System;
using System.Collections.Generic;
using System.Net.Sockets;
using System.IO;
using System.Threading.Tasks;

using GroceryListModel;
using System.Diagnostics;

namespace GroceryListComm
{
    class ClientCommunicationManager
    {
        string hostname = "localhost";
        int port = 5500;

        TcpClient tcpClient;
        StreamReader rd;
        StreamWriter wr;

        public ClientCommunicationManager()
        {
            tcpClient = new TcpClient();
        }

        public void ConnectToServer()
        {
            tcpClient.Connect(hostname, port);
            rd = new StreamReader(tcpClient.GetStream());
            wr = new StreamWriter(tcpClient.GetStream());
        }

        public ResponseMessage SendMessage(RequestMessage msg)
        {
            string serializedMessage = msg.Serialize();
            Debug.WriteLine("Sending data: " + serializedMessage);
            wr.WriteLine(serializedMessage);
            wr.Flush();
            string response = rd.ReadLine();
            Debug.WriteLine("Received data: " + response);
            ResponseMessage responseMsg = ResponseMessage.Deserialize(response);
            return responseMsg;
        }

        public void Close()
        {
            tcpClient.Close();
        }
    }

}
