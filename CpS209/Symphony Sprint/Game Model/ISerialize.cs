using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Symphony_Sprint.Game_Model
{
    public interface ISerialize
    {
        // Converts the object and its components/properties into a string
        string Serialize();
        // Takes the string and converts it to an object
        void Deserialize(string data);
    }
}
