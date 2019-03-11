using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GroceryListModel;

namespace GroceryListComm
{
    public abstract class ResponseMessage
    {
        public abstract string Serialize();

        public static ResponseMessage Deserialize(string response)
        {
            string[] parts = response.Split(' ');
            string msgType = parts[0];
            switch (msgType)
            {
                case AddItemResponseMessage.MSG_TYPE:
                    return AddItemResponseMessage.Deserialize(parts);
                case ListItemResponseMessage.MSG_TYPE:
                    return ListItemResponseMessage.Deserialize(parts);
                default:
                    throw new Exception("Unknown response message type " + msgType);
            }
        }
    }

    public class AddItemResponseMessage: ResponseMessage
    {
        public const string MSG_TYPE = "AddItemResponse";

        public int Quantity { get; set; }

        public AddItemResponseMessage() {  }

        public AddItemResponseMessage(int qty)
        {
            Quantity = qty;
        }

        public override string Serialize()
        {
            return string.Format("{0} {1}", MSG_TYPE, Quantity);
        }

        public static AddItemResponseMessage Deserialize(string[] parts)
        {
            return new AddItemResponseMessage(int.Parse(parts[1]));
        }

    }

    public class ListItemResponseMessage: ResponseMessage
    {
        public const string MSG_TYPE = "ListItemResponse";

        public GroceryList TheList { get; set; }

        public ListItemResponseMessage(GroceryList groceryList)
        {
            this.TheList = groceryList;
        }

        public override string Serialize()
        {
            return string.Format("{0} {1}", MSG_TYPE, TheList.ToString());
        }

        public static ListItemResponseMessage Deserialize(string[] parts)
        {
            var groceryList = GroceryList.Deserialize(parts[1]);
            
            return new ListItemResponseMessage(groceryList);
        }
    }
}
