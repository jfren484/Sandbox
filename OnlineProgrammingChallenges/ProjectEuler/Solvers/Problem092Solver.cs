using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;

namespace ProjectEuler.Solvers
{
	[Description("Investigating a square digits number chain with a surprising property.")]
	public class Problem092Solver : IProblemSolver
	{
		public string Execute()
		{
			const int max = 10000000;

			var endsWithOne = new HashSet<int> {1};
			var endsWithEightyNine = new HashSet<int> {89};

			for (var i = 2; i < max; i++)
			{
				var n = i;
				var sequence = new List<int>();

				HashSet<int> endsWithSet = null;
				while (endsWithSet == null)
				{
					sequence.Add(n);
					n = Next(n);

					endsWithSet = endsWithEightyNine.Contains(n) ? endsWithEightyNine :
								  endsWithOne.Contains(n) ? endsWithOne :
								  null;
				}
				endsWithSet.UnionWith(sequence);
			}

			return endsWithEightyNine.Count(i => i < max).ToString();
		}

		private static int Next(int n)
		{
			var newN = 0;

			while (n > 0)
			{
				newN += (n % 10) * (n % 10);
				n /= 10;
			}

			return newN;
		}
	}
}
