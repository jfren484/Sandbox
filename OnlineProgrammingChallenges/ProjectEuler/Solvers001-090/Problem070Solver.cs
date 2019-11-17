using System;
using System.ComponentModel;
using System.Linq;

namespace ProjectEuler.Solvers
{
	[Description("Investigate values of n for which φ(n) is a permutation of n.")]
	public class Problem070Solver : IProblemSolver
	{
		public string Execute()
		{
			const int max = 10000000;
			var sqrt = (int)Math.Sqrt(max);
			Prime.CalculatePrimesToN(max / 2);
			var primes = Prime.Primes.Select(p => (int)p).ToArray();

			var minRatio = 2.0;
			var minN = 0;

			for (var a = 1; primes[a] <= sqrt; a++)
			{
				for (var b = a; ; b++)
				{
					var n = primes[a] * primes[b];
					if (n > max) break;

					var tot = (primes[a] - 1) * (primes[b] - 1);
					if (n.ToString().IsPermutationOf(tot.ToString()))
					{
						var r = (double)n / tot;
						if (r < minRatio)
						{
							minRatio = r;
							minN = n;
						}
					}
				}
			}

			return minN.ToString();
		}
	}
}
