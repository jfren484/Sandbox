using System.ComponentModel;
using System.Linq;

namespace ProjectEuler.Solvers
{
	[Description("Find the longest sequence using a starting number under one million.")]
	public class Problem014Solver : IProblemSolver
	{
		public string Execute()
		{
			var terms = new int[1000000];
			for (var i = 1; i < terms.Length; i++)
			{
				terms[i] = 1;
				for (long x = i; x > 1; terms[i]++)
					x = x % 2 == 0
						? x / 2
						: 3 * x + 1;
			}

			var max = terms.Max();
			var index = terms.ToList().IndexOf(max);

			return string.Format("{0} results in a sequence of {1} terms.", index, max);
		}
	}
}
