using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;

namespace ProjectEuler.Solvers
{
	[Description("Find a set of five primes for which any two primes concatenate to produce another prime.")]
	public class Problem060Solver : IProblemSolver
	{
		public string Execute1()
		{
			const int max = 10000;
			Prime.CalculatePrimesToN(max);

			var sets = from p1 in Prime.Primes
			           from p2 in Prime.Primes
			           where p2 > p1
			                 && BothCombosArePrime(p2, p1)
			           from p3 in Prime.Primes
			           where p3 > p2
			                 && BothCombosArePrime(p3, p2)
			                 && BothCombosArePrime(p3, p1)
			           from p4 in Prime.Primes
			           where p4 > p3
			                 && BothCombosArePrime(p4, p3)
			                 && BothCombosArePrime(p4, p2)
			                 && BothCombosArePrime(p4, p1)
			           from p5 in Prime.Primes
			           where p5 > p4
			                 && BothCombosArePrime(p5, p4)
			                 && BothCombosArePrime(p5, p3)
			                 && BothCombosArePrime(p5, p2)
			                 && BothCombosArePrime(p5, p1)
			           let primes = new[] {p1, p2, p3, p4, p5}
			           select primes;

			var list = sets.OrderBy(s => s.Sum(ul => (int)ul)).First();

			return string.Format("List: {{{0}}}, Sum: {1}", string.Join(", ", list), list.Sum(ul => (int)ul));
		}

		public string Execute()
		{
			const int max = 10000;
			Prime.CalculatePrimesToN(max);
			var primes = Prime.Primes.Where(p => p < max).ToList();
			Prime.CalculatePrimesToN(max * 100);

			var bestList = new ulong[0];
			var bestSum = ulong.MaxValue;
			for (var i1 = 0; i1 < primes.Count - 4; i1++)
			{
				var p1 = primes[i1];
				for (var i2 = i1 + 1; i2 < primes.Count - 3; i2++)
				{
					var p2 = primes[i2];
					if (!BothCombosArePrime(p2, p1)) continue;

					for (var i3 = i2 + 1; i3 < primes.Count - 2; i3++)
					{
						var p3 = primes[i3];
						if (!BothCombosArePrime(p3, p1)) continue;
						if (!BothCombosArePrime(p3, p2)) continue;

						for (var i4 = i3 + 1; i4 < primes.Count - 1; i4++)
						{
							var p4 = primes[i4];
							if (!BothCombosArePrime(p4, p1)) continue;
							if (!BothCombosArePrime(p4, p2)) continue;
							if (!BothCombosArePrime(p4, p3)) continue;

							for (var i5 = i4 + 1; i5 < primes.Count; i5++)
							{
								var p5 = primes[i5];
								if (!BothCombosArePrime(p5, p1)) continue;
								if (!BothCombosArePrime(p5, p2)) continue;
								if (!BothCombosArePrime(p5, p3)) continue;
								if (!BothCombosArePrime(p5, p4)) continue;

								var sum = p1 + p2 + p3 + p4 + p5;
								if (sum >= bestSum) continue;

								bestSum = sum;
								bestList = new[] {p1, p2, p3, p4, p5};
							}
						}
					}
				}
			}

			return string.Format("List: {{{0}}}, Sum: {1}", string.Join(", ", bestList), bestSum);
		}

		private static readonly Dictionary<KeyValuePair<ulong, ulong>, bool> _primeDict = new Dictionary<KeyValuePair<ulong, ulong>, bool>();
		private static bool BothCombosArePrime(ulong x, ulong y)
		{
			var kvp = new KeyValuePair<ulong, ulong>(x, y);
			if (!_primeDict.ContainsKey(kvp))
			{
				var xyStr = string.Concat(x, y);
				var yxStr = string.Concat(y, x);
				var xy = ulong.Parse(xyStr);
				var yx = ulong.Parse(yxStr);

				var bothPrime = xyStr.Length <= 6
				                	? xy.IsPrime() && yx.IsPrime()
				                	: Prime.IsPrimeNoSieve(xy) && Prime.IsPrimeNoSieve(yx);

				_primeDict.Add(kvp, bothPrime);
			}

			return _primeDict[kvp];
		}
	}
}
