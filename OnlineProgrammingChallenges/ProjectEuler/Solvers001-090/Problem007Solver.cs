using System.ComponentModel;

namespace ProjectEuler.Solvers
{
	[Description("Find the 10001st prime.")]
	public class Problem007Solver : IProblemSolver
	{
		public string Execute()
		{
			Prime.CalculatePrimesToN(104743);
			return Prime.Primes[10000].ToString();
		}
	}
}
