using System;
using System.ComponentModel;

namespace ProjectEuler.Solvers
{
	[Description("Find the largest prime factor of a composite number.")]
	public class Problem003Solver : IProblemSolver
	{
		public string Execute()
		{
			const long target = 600851475143;
			var max = (ulong)Math.Sqrt(target);

			Prime.CalculatePrimesToN(max);

			ulong largest = 0;
			for (var i = 0; i < Prime.Primes.Count && Prime.Primes[i] <= max; i++)
				if (target % Prime.Primes[i] == 0)
					largest = Prime.Primes[i];

			return largest.ToString();
		}
	}
}
