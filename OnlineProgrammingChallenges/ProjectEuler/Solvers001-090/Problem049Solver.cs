using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;

namespace ProjectEuler.Solvers
{
	[Description("Find arithmetic sequences, made of prime terms, whose four digits are permutations of each other.")]
	public class Problem049Solver : IProblemSolver
	{
		public string Execute()
		{
			Prime.CalculatePrimesToN(10000);

			var fourDigitPrimes = from p in Prime.Primes
			                      let s = p.ToString()
			                      where s.Length == 4
			                      group p by s.PermutationKey()
			                      into g
			                      where g.Count() >= 3
			                      select new
			                      	{
			                      		g.Key,
			                      		List = g.OrderBy(x => x).ToList()
			                      	};

			var matches = new List<string>();

			foreach (var set in fourDigitPrimes)
			{
				for (var i = set.List.Count - 1; i >= 2; i--)
				{
					var a = set.List[i];
					for (var j = i - 1; j >= 1; j--)
					{
						var b = set.List[j];
						for (var k = j - 1; k >= 0; k--)
						{
							var c = set.List[k];
							if (a - b == b - c)
								matches.Add(string.Format("{0}{1}{2}", c, b, a));
						}
					}
				}
			}

			return string.Join(", ", matches);
		}
	}
}
