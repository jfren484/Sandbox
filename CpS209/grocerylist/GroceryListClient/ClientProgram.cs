using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using GroceryListComm;
using GroceryListModel;

namespace GroceryListClient
{
    class ClientProgram
    {
        static void Main(string[] args)
        {
            if (args.Length != 2)
            {
                Console.WriteLine("Usage: GroceryListClient.exe <item> <qty>");
                return;
            }

            string item = args[0];
            int qty = int.Parse(args[1]);

            var clientComm = new ClientCommunicationManager();
            clientComm.ConnectToServer();

            Console.WriteLine("Sending AddItemRequestMessage...");
            var addItemResponseMsg = clientComm.SendMessage(new AddItemRequestMessage(item, qty)) as AddItemResponseMessage;

            Console.WriteLine("New quantity = " + addItemResponseMsg.Quantity);

            Console.WriteLine("Sending ListItemRequestMessage...");
            var listItemResponseMsg = clientComm.SendMessage(new ListItemRequestMessage()) as ListItemResponseMessage;

            Console.WriteLine("Items:");
            listItemResponseMsg.TheList.Items.ForEach(Console.WriteLine);

            clientComm.Close();
        }
    }
}
