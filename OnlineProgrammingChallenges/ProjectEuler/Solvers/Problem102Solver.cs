using System.ComponentModel;
using System.Drawing;
using System.Linq;
using ProjectEuler.InputFiles;

namespace ProjectEuler.Solvers
{
	[Description("For how many triangles in the text file does the interior contain the origin?")]
	public class Problem102Solver : IProblemSolver
	{
		public string Execute()
		{
			return Problem102Input.Triangles.Count(t => t.FilledAreaContains(Point.Empty)).ToString();
		}
	}
}
