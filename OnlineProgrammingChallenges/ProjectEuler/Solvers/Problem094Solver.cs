using System.ComponentModel;

namespace ProjectEuler.Solvers
{
	[Description("Investigating almost equilateral triangles with integral sides and area.")]
	public class Problem094Solver : IProblemSolver
	{
		public string Execute()
		{
			const long max = 1000000000;

			var x = 7;
			var y = 4;
			var p = 16;
			var sum = 0;

			while (p < max)
			{
				sum += p;

				var newX = x * 2 + 3 * y;
				var newY = x + y * 2;
				x = newX;
				y = newY;
				p = 2 * (x + (x % 3 == 1 ? 1 : -1));
			}

			return sum.ToString();
		}
	}
}
