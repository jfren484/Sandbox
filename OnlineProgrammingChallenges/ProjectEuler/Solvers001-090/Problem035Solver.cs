using System.ComponentModel;
using System.Linq;

namespace ProjectEuler.Solvers
{
	[Description("How many circular primes are there below one million?")]
	public class Problem035Solver : IProblemSolver
	{
		public string Execute()
		{
			var chars = new[] { '2', '4', '5', '6', '8', '0' };

			const int max = 999999;
			Prime.CalculatePrimesToN(max);

			var circularPrimes = Prime.Primes
				.Where(p => p < max
					&& (p < 10 || p.ToString().IndexOfAny(chars) < 0)
					&& p.Rotations().All(Prime.PrimeSet.Contains));

			return circularPrimes.Count().ToString();
		}
	}
}
