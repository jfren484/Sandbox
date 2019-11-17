using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;

namespace ProjectEuler.Solvers
{
	[Description("If p is the perimeter of a right angle triangle, {a, b, c}, which value, for p ≤ 1000, has the most solutions?")]
	public class Problem039Solver : IProblemSolver
	{
		public string Execute()
		{
			var results = new Dictionary<int, List<Triangle>>();

			for (var p = 12; p <= 1000; p+= 2)
			{
				var stop = p / 2;
				var solutions = new List<Triangle>();
				for (var a = stop; a > 0; a--)
				{
					var aSquared = a * a;

					for (var b = stop; b >= a; b--)
					{
						var c = p - a - b;
						if (c * c == aSquared + b * b)
							solutions.Add(new Triangle { A = a, B = b, C = c });
					}
				}

				if (solutions.Count > 0)
					results.Add(p, solutions);
			}

			var most = results.OrderByDescending(kvp => kvp.Value.Count).First();

			return string.Format("Perimiter {0} has {1} solutions.", most.Key, most.Value.Count);
		}
	}
}
