using System.ComponentModel;

namespace ProjectEuler.Solvers
{
	[Description("Find the first four consecutive integers to have four distinct primes factors.")]
	public class Problem047Solver : IProblemSolver
	{
		public string Execute()
		{
			ulong i = 1;
			var found = false;
			while (!found)
			{
				if (Prime.PrimeFactors(++i).Count == 4
					&& Prime.PrimeFactors(++i).Count == 4
					&& Prime.PrimeFactors(++i).Count == 4
					&& Prime.PrimeFactors(++i).Count == 4)
					found = true;
			}

			return (i - 3).ToString();
		}
	}
}
