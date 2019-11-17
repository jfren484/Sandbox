using System.ComponentModel;
using System.Linq;

namespace ProjectEuler.Solvers
{
	[Description("How many elements would be contained in the set of reduced proper fractions for d ≤ 1,000,000?")]
	public class Problem072Solver : IProblemSolver
	{
		public string Execute()
		{
			const int max = 1000000;
			var nums = Enumerable.Range(2, max - 1);
			var count = nums.Aggregate((ulong)0, (agg, n) => agg + (ulong)n.Totient());

			return count.ToString();
		}
	}
}
