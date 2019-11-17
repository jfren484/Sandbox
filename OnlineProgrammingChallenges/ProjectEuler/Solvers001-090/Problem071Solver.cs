using System.ComponentModel;

namespace ProjectEuler.Solvers
{
	[Description("Listing reduced proper fractions in ascending order of size.")]
	public class Problem071Solver : IProblemSolver
	{
		public string Execute()
		{
			int bestN = 0, bestD = 0;
			var bestFrac = 0.0;

			for (var d = 1; d <= 1000000; d++)
			{
				var n = (int)(d * 2.999999999 / 7);
				var frac = (double)n / d;

				if (frac > bestFrac)
				{
					bestN = n;
					bestD = d;
					bestFrac = frac;
				}
			}

			return string.Format("{0}/{1}", bestN, bestD);
		}
	}
}
