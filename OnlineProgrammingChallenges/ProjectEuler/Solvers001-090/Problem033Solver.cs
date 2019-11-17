using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;

namespace ProjectEuler.Solvers
{
	[Description("Discover all the fractions with an unorthodox cancelling method.")]
	public class Problem033Solver : IProblemSolver
	{
		public string Execute()
		{
			var results = new List<KeyValuePair<double, string>>();

			for (double i = 1; i < 10; i++)
			{
				for (double a = 0; a < i; a++)
					for (double b = 0; b < 10; b++)
					{
						var ai = a * 10 + i;
						var ib = i * 10 + b;

						if (ai / ib == a / b)
							results.Add(new KeyValuePair<double, string>(ai / ib, string.Format("{0}/{1}", ai, ib)));
					}
			}

			return string.Format("{0} => {1}/100", string.Join(", ", results.Select(kvp => kvp.Value)), 100*results.Aggregate(1.0, (agg, kvp) => agg * kvp.Key));
		}
	}
}
