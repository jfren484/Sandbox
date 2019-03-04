//-----------------------------------------------------------
//File:   GridButton.cs
//Desc:   Inherits from Button and gives it X and Y
//        properties.
//----------------------------------------------------------- 

using Battleship;
using System.Windows.Controls;

// Inherits from Button and gives it X and Y coordinate properties
public class GridButton : Button
{
    public Location Location { get; set; }
}

