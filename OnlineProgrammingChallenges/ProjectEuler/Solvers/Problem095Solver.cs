// ReSharper disable AccessToModifiedClosure
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;

namespace ProjectEuler.Solvers
{
	[Description("Find the smallest member of the longest amicable chain with no element exceeding one million.")]
	public class Problem095Solver : IProblemSolver
	{
		public string Execute()
		{
			const int max = 1000000;
			var dictionary = new Dictionary<int, int>();

			var divisorSums = Enumerable.Repeat(1, max + 1).ToArray();
			for (var n = 2; n <= max; n++)
			{
				for (var i = n * 2; i <= max; i += n)
					divisorSums[i] += n;
			}
			for (var i = 1; i < divisorSums.Length; i++)
				dictionary.Add(i, divisorSums[i]);

			var longest = 0;
			var longestLength = 0;

			for (var n = 1; dictionary.Any(); n++)
			{
				var chain = dictionary
					.Where(kvp =>
					       	{
					       		var v = kvp.Value;
					       		for (var i = 1; i < n; i++)
					       			v = dictionary[v];
					       		return v == kvp.Key;
					       	})
					.Select(kvp => kvp.Key)
					.ToList();
				if (!chain.Any()) continue;

				foreach (var valueToRemove in chain)
					dictionary.Remove(valueToRemove);

				// Remove any whose value is not also a key, and do this until no more values are found to remove.
				for (;;)
				{
					var toRemove = dictionary.Where(kvp => !dictionary.ContainsKey(kvp.Value)).ToList();
					if (!toRemove.Any()) break;
					toRemove.ForEach(kvp => dictionary.Remove(kvp.Key));
				}

				longest = chain.Min();
				longestLength = n;
			}

			return string.Format("Longest chain of length {0} has smallest member {1}.", longestLength, longest);
		}
	}
}
// ReSharper restore AccessToModifiedClosure
