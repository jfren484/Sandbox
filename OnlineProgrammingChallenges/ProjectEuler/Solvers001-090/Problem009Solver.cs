using System.ComponentModel;

namespace ProjectEuler.Solvers
{
	[Description("Find the only Pythagorean triplet, {a, b, c}, for which a + b + c = 1000.")]
	public class Problem009Solver : IProblemSolver
	{
		public string Execute()
		{
			const int sum = 1000;
			for (var a = 1; a < sum / 3; a++)
			{
				for (var b = a + 1; b < sum / 2; b++)
				{
					var c = sum - a - b;
					if (c < a || c < b) continue;

					if (a * a + b * b == c * c)
						return string.Format("For {0} - a = {1}, b = {2}, c = {3}; product = {4}", sum, a, b, c, a * b * c);
				}
			}

			return "Could not be determined";
		}
	}
}
