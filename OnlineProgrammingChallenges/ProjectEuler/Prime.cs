using System;
using System.Collections.Generic;
using System.Linq;

namespace ProjectEuler
{
	public static class Prime
	{
		private static ulong _max = 10;
		private static readonly ulong[] _singleDigitPrimes = new ulong[] {2, 3, 5, 7};

		private static readonly Dictionary<ulong, Dictionary<ulong, ulong>> _primeFactors = new Dictionary<ulong, Dictionary<ulong, ulong>>();

		public static readonly List<ulong> Primes = new List<ulong>(_singleDigitPrimes);
		public static readonly HashSet<ulong> PrimeSet = new HashSet<ulong>(_singleDigitPrimes);

		public static void Reset()
		{
			_max = 10;
			_primeFactors.Clear();

			Primes.Clear();
			PrimeSet.Clear();

			Primes.AddRange(_singleDigitPrimes);
			foreach (var p in _singleDigitPrimes)
				PrimeSet.Add(p);
		}

		public static void CalculatePrimesToN(ulong n)
		{
			if (n <= _max) return;

			for (var x = _max + 1; x <= n; x++)
			{
				var prime = x % 2 != 0 && x % 3 != 0 && x % 5 != 0;

				for (var i = 3; prime; i++)
				{
					var p = Primes[i];

					if (p * p > x) break;

					if (x % p == 0)
						prime = false;
				}

				if (prime)
					Primes.Add(x);
			}

			PrimeSet.UnionWith(Primes);
			_max = n;
		}

		public static bool IsPrime(ulong n)
		{
			if (n > _max)
				CalculatePrimesToN(n);

			return PrimeSet.Contains(n);
		}

		public static bool IsPrimeNoSieve(ulong n)
		{
			if (n % 2 == 0) return false;

			var stop = (ulong)Math.Sqrt(n);
			for (ulong x = 3; x <= stop; x += 2)
				if (n % x == 0)
					return false;

			return true;
		}

		public static Dictionary<int, int> PrimeFactors(int n)
		{
			return PrimeFactors((ulong)n).ToDictionary(kvp => (int)kvp.Key, kvp => (int)kvp.Value);
		}

		public static Dictionary<ulong, ulong> PrimeFactors(ulong n)
		{
			if (!_primeFactors.ContainsKey(n))
			{
				Dictionary<ulong, ulong> primeFactors = null;

				var max = (ulong)Math.Sqrt(n);
				CalculatePrimesToN(max);

				// Find the first prime that divides into n and then get its multiplicand's prime factors.
				for (var i = 0; i < Primes.Count && Primes[i] <= max; i++)
					if (n % Primes[i] == 0)
					{
						var y = n / Primes[i];
						var yFactors = PrimeFactors(y);

						primeFactors = new Dictionary<ulong, ulong>(yFactors);
						if (primeFactors.ContainsKey(Primes[i]))
							primeFactors[Primes[i]]++;
						else
							primeFactors.Add(Primes[i], 1);

						break;
					}

				// Assign to cached dictionary (if primeFactors is null then n is prime and is the only prime factor)
				_primeFactors[n] = primeFactors ?? new Dictionary<ulong, ulong> {{n, 1}};
			}

			return _primeFactors[n];
		}
	}
}
