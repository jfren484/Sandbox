using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GroceryListModel;

namespace GroceryListComm
{
    public abstract class RequestMessage
    {

        public abstract ResponseMessage Execute(GroceryList groceryList);

        public abstract string Serialize();

        public static RequestMessage Deserialize(string msg)
        {
            string[] parts = msg.Split(' ');
            string msgType = parts[0];
            switch (msgType)
            {
                case AddItemRequestMessage.MSG_TYPE:
                    return AddItemRequestMessage.Deserialize(parts);
                case ListItemRequestMessage.MSG_TYPE:
                    return new ListItemRequestMessage();
                default:
                    throw new Exception("Unknown response message type " + msgType);
            }
        }

    }

    public class AddItemRequestMessage : RequestMessage
    {
        public const string MSG_TYPE = "AddItem";

        public string Item { get; set; }

        public int Quantity { get; set; }

        public AddItemRequestMessage(string item, int qty)
        {
            Item = item;
            Quantity = qty;
        }

        public override ResponseMessage Execute(GroceryList groceryList)
        {
            var item = groceryList.AddItem(Item, Quantity);
            return new AddItemResponseMessage(item.Quantity);
        }

        public override string Serialize()
        {
            return string.Format("{0} {1} {2}", MSG_TYPE, Item, Quantity);
        }

        public static AddItemRequestMessage Deserialize(string[] parts)
        {
            return new AddItemRequestMessage(parts[1], int.Parse(parts[2]));
        }

    }

    public class ListItemRequestMessage: RequestMessage
    {
        public const string MSG_TYPE = "ListItem";

        public override ResponseMessage Execute(GroceryList groceryList)
        {
            return new ListItemResponseMessage(groceryList);
        }

        public override string Serialize()
        {
            return MSG_TYPE;
        }

        
    }
}
