using System.ComponentModel;
using System.Linq;

namespace ProjectEuler.Solvers
{
	[Description("Finding the nth digit of the fractional part of the irrational number.")]
	public class Problem040Solver : IProblemSolver
	{
		public string Execute()
		{
			var str = string.Join("", Enumerable.Range(1, 185185).Select(i => i.ToString()));

			var chars = new[] { str[0], str[9], str[99], str[999], str[9999], str[99999], str[999999] };

			return chars.Select(c => c - '0').Aggregate(1, (agg, d) => agg * d).ToString();
		}
	}
}
