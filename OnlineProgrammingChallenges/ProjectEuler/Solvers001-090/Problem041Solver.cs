using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;

namespace ProjectEuler.Solvers
{
	[Description("What is the largest n-digit pandigital prime that exists?")]
	public class Problem041Solver : IProblemSolver
	{
		public string Execute()
		{
			var pandigitalStrings = new Dictionary<int, List<string>>(7);
			for (var i = 1; i <= 7; i++)
			{
				pandigitalStrings.Add(i, new List<string>());

				if (i == 1)
					pandigitalStrings[i].Add(i.ToString());
				else
					foreach (var s in pandigitalStrings[i - 1])
						for (var j = s.Length; j >= 0; j--)
							pandigitalStrings[i].Add(s.Insert(j, i.ToString()));
			}

			ulong prime = 0;
			for (var i = 7; i > 0 && prime == 0; i--)
				prime = pandigitalStrings[i].Select(s => ulong.Parse(s)).OrderByDescending(n => n).FirstOrDefault(Prime.IsPrimeNoSieve);

			return prime.ToString();
		}
	}
}
