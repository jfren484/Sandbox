using System.ComponentModel;

namespace ProjectEuler.Solvers
{
	[Description("How many fractions lie between 1/3 and 1/2 in a sorted set of reduced proper fractions?")]
	public class Problem073Solver : IProblemSolver
	{
		public string Execute()
		{
			const int max = 12000;
			var count = 0;

			for (var d = 1; d <= max; d++)
			{
				var minN = (int)(d / 3.0 + 1);
				var maxN = (int)(d / 2.0 - 0.00000000001);

				for (var n = minN; n <= maxN; n++)
				{
					if (d.IsCoprimeWith(n))
						count++;
				}
			}

			return count.ToString();
		}
	}
}
