using System.ComponentModel;
using System.Linq;
using ProjectEuler.InputFiles;

namespace ProjectEuler.Solvers
{
	[Description("What is the total of all the name scores in the file of first names?")]
	public class Problem022Solver : IProblemSolver
	{
		public string Execute()
		{
			return Problem022Input.Names.OrderBy(n => n).Select((n, i) => (i + 1) * n.ToCharArray().Sum(c => c - '@')).Sum().ToString();
		}
	}
}
