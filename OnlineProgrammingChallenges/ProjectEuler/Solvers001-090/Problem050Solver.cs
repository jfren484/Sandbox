using System.ComponentModel;
using System.Linq;

namespace ProjectEuler.Solvers
{
	[Description("Which prime, below one-million, can be written as the sum of the most consecutive primes?")]
	public class Problem050Solver : IProblemSolver
	{
		public string Execute()
		{
			const int max = 1000000;
			Prime.CalculatePrimesToN(max);
			var primes = Prime.Primes.Where(x => x < max).ToList();
			var count = primes.Count;

			// Find the largest number of primes that can add up to less than max
			var longestCount = -1;
			ulong runningTotal = 0;
			while (runningTotal < max)
				runningTotal += primes[++longestCount];

			ulong bestMatch = 0;
			int len, start = 0;
			for (len = longestCount; bestMatch == 0 && len > 0; len--)
			{
				for (start = count - len; bestMatch == 0 && start >= 0; start--)
				{
					var sum = (ulong)primes.GetRange(start, len).Sum(ul => (long)ul);
					if (sum < max && sum.IsPrime())
						bestMatch = sum;
				}
			}
			return string.Format("Prime {0} can be written as the sum of {1} primes starting at prime {2} ({3}).", bestMatch, len, start, primes[start]);
		}
	}
}
