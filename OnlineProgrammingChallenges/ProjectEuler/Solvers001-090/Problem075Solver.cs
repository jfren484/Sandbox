using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;

namespace ProjectEuler.Solvers
{
	[Description("Find the number of different lengths of wire that can form a right angle triangle in only one way.")]
	public class Problem075Solver : IProblemSolver
	{
		public string Execute()
		{
			const int max = 1500000;

			var primeTriples = new List<Triangle>();
			var newOnes = new List<Triangle> { new Triangle { A = 3, B = 4, C = 5 } };
			while (newOnes.Any())
			{
				primeTriples.AddRange(newOnes);
				newOnes = newOnes
					.SelectMany(tri => GenerateThreePrimeTriples(tri).Where(trip => trip.Perimeter <= max))
					.ToList();
			}

			var perimeters = primeTriples.GroupBy(trip => trip.Perimeter).ToDictionary(tg => tg.Key, tg => tg.Count());
			foreach (var value in perimeters.Select(p => p.Key).ToList())
			{
				var stop = max / value;
				for (var i = 2; i <= stop; i++)
				{
					var perim = i * value;
					if (perimeters.ContainsKey(perim))
						++perimeters[perim];
					else
						perimeters.Add(perim, 1);
				}
			}

			var count = perimeters.Count(p => p.Value == 1);

			return count.ToString();
		}

		private static IEnumerable<Triangle> GenerateThreePrimeTriples(Triangle tri)
		{
			yield return new Triangle
				{
					A =      tri.A - 2 * tri.B + 2 * tri.C,
					B = 2 *  tri.A -     tri.B + 2 * tri.C,
					C = 2 *  tri.A - 2 * tri.B + 3 * tri.C
				};

			yield return new Triangle
				{
					A =      tri.A + 2 * tri.B + 2 * tri.C,
					B = 2 *  tri.A +     tri.B + 2 * tri.C,
					C = 2 *  tri.A + 2 * tri.B + 3 * tri.C
				};

			yield return new Triangle
				{
					A =     -tri.A + 2 * tri.B + 2 * tri.C,
					B = 2 * -tri.A +     tri.B + 2 * tri.C,
					C = 2 * -tri.A + 2 * tri.B + 3 * tri.C
				};
		}
	}
}
