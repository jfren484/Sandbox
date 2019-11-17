using System.ComponentModel;
using System.Linq;

namespace ProjectEuler.Solvers
{
	[Description("How many continued fractions for N ≤ 10000 have an odd period?")]
	public class Problem064Solver : IProblemSolver
	{
		public string Execute()
		{
			var periods = Enumerable
				.Range(1, 10000)
				.Select(n => n.SquareRootPeriod());

			return periods.Where(p => p.Length > 0)
				.Select(p => p.Split(','))
				.Count(a => a.Length % 2 == 1)
				.ToString();
		}
	}
}
