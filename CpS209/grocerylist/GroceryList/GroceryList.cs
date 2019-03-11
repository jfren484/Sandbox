using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GroceryListModel
{
    public class GroceryList
    {
        public List<GroceryItem> Items;

        public GroceryList()
        {
            Items = new List<GroceryItem>();
        }

        public GroceryItem AddItem(string item, int qty)
        {
            GroceryItem foundItem = Items.Find(itm => itm.Item == item);
            if (foundItem == null)
            {
                foundItem = new GroceryItem(item, qty);
                Items.Add(foundItem);
            }                
            else
                foundItem.Quantity += qty;

            return foundItem;
        }

        public void RemoveItem(string item)
        {
            Items.RemoveAll(itm => itm.Item == item);
        }

        public override string ToString()
        {
            return string.Join(";", Items);
        }

        public static GroceryList Deserialize(string msg)
        {
            var groceryList = new GroceryList();

            string[] items = msg.Split(';');
            foreach (string item in items)
            {
                string[] itemData = item.Split(':');
                groceryList.Items.Add(new GroceryItem(itemData[0], int.Parse(itemData[1])));
            }

            return groceryList;
        }
    }

    public class GroceryItem
    {
        public string Item { get; set; }

        public int Quantity { get; set; }

        public GroceryItem(string item, int qty)
        {
            Item = item;
            Quantity = qty;
        }

        public override string ToString()
        {
            return Item + ":" + Quantity;
        }
    }

}
