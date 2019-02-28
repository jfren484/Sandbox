//-----------------------------------------------------------
//File:   GridButton.cs
//Desc:   Inherits from Button and gives it X and Y
//        properties.
//----------------------------------------------------------- 

using System.Windows.Controls;

// Inherits from Button and gives it X and Y coordinate properties
public class GridButton : Button
{
    public int X { get; set; }
    public int Y { get; set; }
}

