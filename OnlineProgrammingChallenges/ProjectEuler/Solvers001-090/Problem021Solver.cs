using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;

namespace ProjectEuler.Solvers
{
	[Description("Evaluate the sum of all amicable pairs under 10000.")]
	public class Problem021Solver : IProblemSolver
	{
		public string Execute()
		{
			const int size = 10000;
			var allDivisors = new Dictionary<int, int>(size);

			for (var n = 2; n < size; n++)
				allDivisors.Add(n, n.Divisors().Where(d => d != n).Sum());

			var amicablePairs = allDivisors
				.Where(kvp => kvp.Value != kvp.Key &&
				              allDivisors.ContainsKey(kvp.Value) &&
				              allDivisors[kvp.Value] == kvp.Key);

			return amicablePairs
				.Sum(kvp => kvp.Key)
				.ToString();
		}
	}
}
