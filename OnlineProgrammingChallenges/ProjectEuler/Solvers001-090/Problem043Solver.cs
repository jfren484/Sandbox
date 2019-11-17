using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;

namespace ProjectEuler.Solvers
{
	[Description("Find the sum of all pandigital numbers with an unusual sub-string divisibility property.")]
	public class Problem043Solver : IProblemSolver
	{
		public string Execute()
		{
			var pandigitalStrings = new Dictionary<int, List<string>>(10);
			for (var i = 0; i <= 9; i++)
			{
				pandigitalStrings.Add(i, new List<string>());

				if (i == 0)
					pandigitalStrings[i].Add(i.ToString());
				else
					foreach (var s in pandigitalStrings[i - 1])
						for (var j = s.Length; j >= 0; j--)
							pandigitalStrings[i].Add(s.Insert(j, i.ToString()));
			}

			var primes = new Dictionary<int, int>
			    {
			        {1, 2},
			        {2, 3},
			        {3, 5},
			        {4, 7},
			        {5, 11},
			        {6, 13},
			        {7, 17}
			    };

			var allMatches = pandigitalStrings[9].Where(s => primes.All(p => int.Parse(s.Substring(p.Key, 3)) % p.Value == 0)).ToList();

			return allMatches.Sum(m => long.Parse(m)).ToString();
		}
	}
}
