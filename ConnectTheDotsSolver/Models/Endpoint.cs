using System.Diagnostics;
using System.Drawing;

namespace CtDSolver.Models
{
    [DebuggerDisplay("{Location}, {Color}")]
    public class Endpoint
    {
        public Point Location { get; set; }
        public Color Color { get; set; }
    }
}
