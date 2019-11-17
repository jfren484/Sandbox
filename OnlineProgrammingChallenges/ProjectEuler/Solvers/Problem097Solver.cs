using System.ComponentModel;

namespace ProjectEuler.Solvers
{
	[Description("Find the last ten digits of the non-Mersenne prime: 28433 × 2^7830457 + 1.")]
	public class Problem097Solver : IProblemSolver
	{
		public string Execute()
		{
			var agg = 28433L;

			for (var i = 1; i <= 7830457; i++)
				agg = agg * 2 % 10000000000;

			return (agg + 1).ToString();
		}
	}
}
