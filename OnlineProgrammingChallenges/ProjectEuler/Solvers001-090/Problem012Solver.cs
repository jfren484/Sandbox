using System;
using System.ComponentModel;

namespace ProjectEuler.Solvers
{
	[Description("What is the value of the first triangle number to have over five hundred divisors?")]
	public class Problem012Solver : IProblemSolver
	{
		public string Execute()
		{
			long n, tri, divisors;

			for (n = 1; ; n++)
			{
				tri = n * (n + 1) / 2;

				divisors = 2;
				for (var d = 2; d <= Math.Sqrt(tri); d++)
					if (tri % d == 0)
						divisors += 2;

				if (divisors > 500)
					break;
			}

			return string.Format("The {0}th triangle number, {1}, has {2} divisors.", n, tri, divisors);
		}
	}
}
