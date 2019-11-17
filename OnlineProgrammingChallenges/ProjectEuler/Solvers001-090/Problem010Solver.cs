using System.ComponentModel;
using System.Linq;

namespace ProjectEuler.Solvers
{
	[Description("Calculate the sum of all the primes below two million.")]
	public class Problem010Solver : IProblemSolver
	{
		public string Execute()
		{
			const int max = 2000000;
			Prime.CalculatePrimesToN(max);
			return Prime.Primes.Where(p => p <= max).Sum(p => (long)p).ToString();
		}
	}
}
