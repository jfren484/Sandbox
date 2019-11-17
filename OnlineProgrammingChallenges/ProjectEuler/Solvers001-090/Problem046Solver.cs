using System;
using System.ComponentModel;

namespace ProjectEuler.Solvers
{
	[Description("What is the smallest odd composite that cannot be written as the sum of a prime and twice a square?")]
	public class Problem046Solver : IProblemSolver
	{
		public string Execute()
		{
			Prime.CalculatePrimesToN(6000);

			ulong comp = 0;
			for (ulong i = 9; comp == 0; i += 2)
			{
				if (i.IsPrime()) continue;

				comp = i;
				for (var p = 0; comp > 0 && Prime.Primes[p] < i; p++)
					if (Math.Sqrt(((double)i - Prime.Primes[p]) / 2) % 1 == 0)
						comp = 0;
			}

			return comp.ToString();
		}
	}
}
