using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;

namespace ProjectEuler.Solvers
{
	[Description("Exploring minimal product-sum numbers for sets of different sizes.")]
	public class Problem088Solver : IProblemSolver
	{
		private const int Max = 12000;

		public string Execute()
		{
			var setSizes = new HashSet<int>(Enumerable.Range(2, Max - 1));
			var data = new HashSet<int>();

			for (var n = 4; setSizes.Any(); n++)
			{
				if (n.IsPrime()) continue;

				var factors = Prime.PrimeFactors(n).SelectMany(kvp => Enumerable.Repeat(kvp.Key, kvp.Value)).ToList();
				foreach (var terms in Group(factors, factors.Count).Where(g => g.Length > 1).ToList())
					if (setSizes.Remove(terms.Length + n - terms.Sum()) && !data.Contains(n))
						data.Add(n);
			}

			return data.Sum().ToString();
		}

		private static IEnumerable<int[]> Group(IEnumerable<int> values, int maxSize)
		{
			if (values.Count() == 1)
				yield return values.ToArray();
			else
				for (var size = Math.Min(maxSize, values.Count()); size > 0; size--)
				{
					var groups = values.Combinations(size);
					foreach (var group in groups)
					{
						var list = new[] {group.Aggregate(1, (agg, term) => agg * term)};

						var nonGroup = new List<int>(values);
						foreach (var i in group)
							nonGroup.Remove(i);

						var others = Group(nonGroup, size);
						if (others.Any())
							foreach (var otherGroup in others)
								yield return otherGroup.Concat(list).OrderBy(i => i).ToArray();
						else
							yield return list;
					}
				}
		}
	}
}
