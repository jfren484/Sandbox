using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using GroceryListModel;

namespace GroceryListServer
{
    class Program
    {
        static void Main()
        {
            var list = new GroceryList();

            list.AddItem("Butter", 2);
            list.AddItem("Bread", 3);
            list.AddItem("Jam", 1);

            var commManager = new ServerCommunicationManager(list, Log);
            Log("Listening on port " + ServerCommunicationManager.Port);

            while (true)
            {
                var client = commManager.WaitForClient();
                Log("Received incoming connection.");
                commManager.HandleClientAsync(client);
            }
        }

        static void Log(string msg)
        {
            Console.WriteLine(DateTime.Now + ": " + msg);
        }
        
    }
}
