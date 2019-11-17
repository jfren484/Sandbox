using System.ComponentModel;
using System.Numerics;

namespace ProjectEuler.Solvers
{
	[Description("How many n-digit positive integers exist which are also an nth power?")]
	public class Problem063Solver : IProblemSolver
	{
		public string Execute()
		{
			var count = 0;

			var start = 1;
			for (var p = 1; start < 10; p++)
			{
				while (BigInteger.Pow(start, p).ToString().Length < p)
					start++;

				count += 10 - start;
			}

			return count.ToString();
		}
	}
}
