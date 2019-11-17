using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;

namespace ProjectEuler.Solvers
{
	[Description("What is the maximum 16-digit string for a 'magic' 5-gon ring?")]
	public class Problem068Solver : IProblemSolver
	{
		private const int Size = 5;
		private const int Max = Size * 2;
		private static readonly List<string> _rings = new List<string>();
		private static readonly int[] _ring = new int[Max];

		public string Execute()
		{
			Recurse(0, Size + 1);

			return _rings.Where(r => r.Length == 16).OrderByDescending(r => r).First();
		}

		private static void Recurse(int level, int limit)
		{
			if (level < Max)
			{
				var toTry = Enumerable.Range(1, limit);
				if (level > 0)
				{
					toTry = toTry.Where(i => !_ring.IndexOf(i).IsBetween(0, level));
					if (level < Size)
						toTry = toTry.Where(i => i > _ring[0]);
				}

				foreach (var n in toTry)
				{
					_ring[level] = n;
					Recurse(level + 1, Max);
				}
			}
			else
			{
				var triplets = Enumerable.Range(0, Size).Select(i => new[] { _ring[i], _ring[i + Size], _ring[(i + 1) % Size + Size] });
				var sums = triplets.Select(t => t.Sum()).ToList();

				if (sums.All(s => s == sums[0]))
					_rings.Add(string.Concat(triplets.SelectMany(t => t.Select(i => i.ToString()))));
			}
		}
	}
}
