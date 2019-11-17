using System;
using System.Collections.Generic;
using System.ComponentModel;

namespace ProjectEuler.Solvers
{
	[Description("Investigating numbers that can be expressed as the sum of a prime square, cube, and fourth power?")]
	public class Problem087Solver : IProblemSolver
	{
		private const int Max = 50000000;

		public string Execute()
		{
			Prime.CalculatePrimesToN((ulong)Math.Sqrt(Max));

			var squares = new List<long>();
			var cubes = new List<long>();
			var fourths = new List<long>();

			FillPowers(squares, cubes, fourths);

			var matches = new HashSet<long>();

			foreach (var f in fourths)
			{
				foreach (var c in cubes)
				{
					var sum1 = c + f;
					if (sum1 > Max) break;

					foreach (var s in squares)
					{
						var sum2 = s + sum1;
						if (sum2 > Max) break;

						if (!matches.Contains(sum2))
							matches.Add(sum2);
					}
				}
			}

			return matches.Count.ToString();
		}

		private static void FillPowers(ICollection<long> squares, ICollection<long> cubes, ICollection<long> fourths)
		{
			bool continue3 = true, continue4 = true;

			foreach (var prime in Prime.Primes)
			{
				var p = (long)prime;

				var val = p * p;
				if (val > Max) break;
				squares.Add(val);

				if (!continue3) continue;
				val *= p;
				if (val > Max)
				{
					continue3 = false;
					continue;
				}
				cubes.Add(val);

				if (!continue4) continue;
				val *= p;
				if (val > Max)
				{
					continue4 = false;
					continue;
				}
				fourths.Add(val);
			}
		}
	}
}
