using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;

namespace ProjectEuler.Solvers
{
	[Description("What is the smallest number divisible by each of the numbers 1 to 20?")]
	public class Problem005Solver : IProblemSolver
	{
		public string Execute()
		{
			var allPrimeFactors = new Dictionary<uint, Dictionary<ulong, ulong>>();

			const int target = 20;
			Prime.CalculatePrimesToN(target);

			for (uint i = 2; i <= target; i++)
				allPrimeFactors.Add(i, Prime.PrimeFactors(i));

			// Get the largest number of each prime.
			var primesToCheck = Prime.Primes.Where(p => allPrimeFactors.Any(apf => apf.Value.ContainsKey(p)));
			var primeCount = primesToCheck.ToDictionary(p => p, p => allPrimeFactors.Select(apf => apf.Value.ContainsKey(p) ? apf.Value[p] : 0).Max());
			var product = primeCount.Aggregate(1L, (agg, prime) => agg * (long)Math.Pow(prime.Key, prime.Value));

			return product.ToString();
		}
	}
}
