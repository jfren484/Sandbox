using System.Collections.Generic;
using System.ComponentModel;
using System.Numerics;

namespace ProjectEuler.Solvers
{
	[Description("Investigating the number of ways in which coins can be separated into piles.")]
	public class Problem078Solver : IProblemSolver
	{
		public string Execute()
		{
			const int max = 100000;

			var pents = new List<int[]> {null, new[] {1, 2}};

			var counts = new List<BigInteger> {1};
			for (var n = 1; n <= max; n++)
			{
				var count = BigInteger.Zero;
				for (var p = 1; pents[p][0] <= n; p++)
				{
					var val = counts[n - pents[p][0]];
					if (pents[p][1] <= n)
						val += counts[n - pents[p][1]];

					if (p % 2 == 0)
						val = -val;

					count += val;

					if (p == pents.Count - 1)
					{
						var newP = p + 1;
						pents.Add(new[] { Numeric.NthPentagonal(newP), Numeric.NthPentagonal(-newP) });
					}
				}
				counts.Add(count);

				if (count % 1000000 == 0)
					return string.Format("p({0}) = {1}", n, count);
			}

			return "Didn't find answer";
		}
	}
}
