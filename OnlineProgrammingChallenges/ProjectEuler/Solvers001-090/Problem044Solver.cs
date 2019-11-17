// ReSharper disable AccessToModifiedClosure
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;

namespace ProjectEuler.Solvers
{
	[Description("Find the smallest pair of pentagonal numbers whose sum and difference is pentagonal.")]
	public class Problem044Solver : IProblemSolver
	{
		public string Execute()
		{
			var pentNums = new HashSet<int>(Enumerable.Range(1, 10000).Select(i => i * (3 * i - 1) / 2));
			var max = pentNums.Max();
			var smallest = int.MaxValue;

			foreach (var j in pentNums)
				foreach (var k in pentNums.Where(k => k > j && k + j <= max && pentNums.Contains(k - j) && pentNums.Contains(k + j)))
					if (k - j < smallest)
						smallest = k - j;

			return smallest.ToString();
		}
	}
}
// ReSharper restore AccessToModifiedClosure
