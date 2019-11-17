using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;

namespace ProjectEuler.Solvers
{
	[Description("Find the sum of all eleven primes that are both truncatable from left to right and right to left.")]
	public class Problem037Solver : IProblemSolver
	{
		public string Execute()
		{
			var beginOnlyChars = new[] {'2', '5'};
			var middleOnlyChars = new[] { '1', '9' };
			var invalidChars = new[] { '4', '6', '8', '0' };
			var doubles = new[] { "11", "22", "33", "55", "77", "99" };

			Prime.CalculatePrimesToN(999999);

			var strPrimes = Prime.Primes
				.Where(p => p < 1000000)
				.Select(p => p.ToString());

			var primesToCheck = strPrimes
				.Where(s => s.IndexOfAny(invalidChars) < 0 &&
				            !doubles.Any(s.Contains) &&
							s.LastIndexOfAny(beginOnlyChars) < 1 &&
				            !middleOnlyChars.Contains(s[s.Length - 1]) &&
				            !middleOnlyChars.Contains(s[0]) &&
				            s.Length > 1);

			var truncPrimes = new List<string>();
			foreach (var prime in primesToCheck)
			{
				var valid = true;
				for (var i = prime.Length - 1; i > 0 && valid; i--)
					if (!strPrimes.Contains(prime.Substring(0, i)) || !strPrimes.Contains(prime.Substring(i)))
						valid = false;

				if (valid)
					truncPrimes.Add(prime);
			}

			return truncPrimes.Sum(p => int.Parse(p)).ToString();
		}
	}
}
