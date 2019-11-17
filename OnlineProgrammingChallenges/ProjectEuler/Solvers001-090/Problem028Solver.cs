using System.ComponentModel;

namespace ProjectEuler.Solvers
{
	[Description("What is the sum of both diagonals in a 1001 by 1001 spiral?")]
	public class Problem028Solver : IProblemSolver
	{
		public string Execute()
		{
			const int stop = 1001 / 2;

			var sum = 1;
			for (var r = 1; r <= stop; r++)
				sum += (16 * r + 4) * r + 4;

			return sum.ToString();
		}
	}
}
