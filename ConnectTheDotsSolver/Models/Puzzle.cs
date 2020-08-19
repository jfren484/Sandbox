using System.Collections.Generic;
using System.Diagnostics;
using System.Drawing;

namespace CtDSolver.Models
{
    [DebuggerDisplay("{Size} ({Endpoints.Count})")]
    public class Puzzle
    {
        public Puzzle(int width, int height)
        {
            Size = new Size(width, height);
            Endpoints = new List<Endpoint>();
        }

        public Size Size { get; set; }
        public IList<Endpoint> Endpoints { get; set; }
    }
}
