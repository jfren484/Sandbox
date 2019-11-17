using System.ComponentModel;

namespace ProjectEuler.Solvers
{
	[Description("Find a quadratic formula that produces the maximum number of primes for consecutive values of n.")]
	public class Problem027Solver : IProblemSolver
	{
		public string Execute()
		{
			Prime.CalculatePrimesToN(15000);

			int bestA = 0, bestB = 0, bestPrimes = 0, primes;

			for (var a = -999; a <= 999; a++)
				for (var b = -999; b <= 999; b++)
					if (b.IsPrime() && (primes = CalcPrimes(a, b)) > bestPrimes)
					{
						bestA = a;
						bestB = b;
						bestPrimes = primes;
					}

			return string.Format("Formula n^2 {0:+ #;- #}n {1:+ #;- #} results in {2} primes. Product: {3}",
				bestA,
				bestB,
				bestPrimes,
				bestA * bestB);
		}

		private static int CalcPrimes(int a, int b)
		{
			int i;
			for (i = 0; ((i + a) * i + b).IsPrime() && i < 100; i++) { }

			return i;
		}
	}
}
