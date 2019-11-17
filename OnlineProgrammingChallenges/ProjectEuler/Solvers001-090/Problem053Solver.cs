using System.ComponentModel;
using System.Linq;

namespace ProjectEuler.Solvers
{
	[Description("How many values of C(n,r), for 1 ≤ n ≤ 100, exceed one-million? ")]
	public class Problem053Solver : IProblemSolver
	{
		public string Execute()
		{
			const int max = 100;
			var factorials = Enumerable
				.Range(0, max + 1)
				.ToDictionary(n => n, n => n.Factorial());

			var count = 0;
			for (var n = 1; n <= max; n++)
				for (var r = 1; r <= n; r++)
					if (factorials[n] / (factorials[r] * factorials[n - r]) > 1000000)
						count++;

			return count.ToString();
		}
	}
}
