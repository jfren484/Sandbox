using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Linq;
using System.Numerics;
using System.Text;

namespace ProjectEuler
{
	public static class Extensions
	{
		#region Data

		private static readonly Dictionary<char, int> _romanNumeralValues = new Dictionary<char, int>
			{
				{'C', 100},
				{'D', 500},
				{'I', 1},
				{'L', 50},
				{'M', 1000},
				{'X', 10},
				{'V', 5}
			};

		private static readonly Dictionary<int, string> _romanNumerals =
			_romanNumeralValues
				.ToDictionary(kvp => kvp.Value,
				              kvp => kvp.Key.ToString())
				.Concat(new Dictionary<int, string>
					{
						{900, "CM"},
						{400, "CD"},
						{90, "XC"},
						{40, "XL"},
						{9, "IX"},
						{4, "IV"}
					})
				.OrderByDescending(kvp => kvp.Key)
				.ToDictionary(kvp => kvp.Key, kvp => kvp.Value);

		#endregion

		#region Type extension methods

		public static string GetDescription(this Type t)
		{
			var attrs = t.GetCustomAttributes(typeof(DescriptionAttribute), false);
			if (attrs.Any())
				return ((DescriptionAttribute)attrs.First()).Description;

			throw new ApplicationException("No Description attribute specified for type: " + t.FullName);
		}

		#endregion

		#region string extension methods

		public static bool IsPalindrome(this string str)
		{
			if (str == null) throw new ArgumentNullException("str");

			var len = str.Length;
			for (var i = 0; i < len / 2; i++)
				if (str[i] != str[len - i - 1])
					return false;

			return true;
		}

		public static bool IsPermutationOf(this string str, string perm)
		{
			return str.ToCharArray().OrderBy(c => c)
				.SequenceEqual(perm.ToCharArray().OrderBy(c => c));
		}

		public static long PermutationKey(this string str)
		{
			return (from c in str.ToCharArray()
			        group c by c - '0'
			        into g
			        select (long)g.Key.RaiseTenToThis() * g.Count())
				.Sum();
		}

		public static IEnumerable<string> Permutations(this string str)
		{
			return Permutations(str.ToCharArray()).Select(chars => new string(chars));
		}

		public static string Reverse(this string str)
		{
			return new string(str.ToCharArray().Reverse().ToArray());
		}

		public static string DoFormat(this string str, params object[] args)
		{
			return string.Format(str, args);
		}

		public static int FromRomanNumeralToInt(this string str)
		{
			var sum = 0;

			var chars = str.ToCharArray();
			for (var c = 0; c < chars.Length; c++)
			{
				var value = _romanNumeralValues[chars[c]];
				if (c < chars.Length - 1 && _romanNumeralValues[chars[c + 1]] > value)
					value = -value;
				sum += value;
			}

			return sum;
		}

		#endregion

		#region int extension methods

		public static List<int> Divisors(this int n)
		{
			return Enumerable
				.Range(1, (int)Math.Sqrt(n))	// Check from 1 to Square Root of n
				.Where(i => n % i == 0)			// If i divides into n with no remainder,
				.Select(i => new[] { i, n / i})	// Pull out i and its counterpart
				.SelectMany(array => array)		// Condense the collection of array pairs into a single collection
				.Distinct()						// Remove duplicates (in case n is a perfect square)
				.ToList();
		}

		public static BigInteger Factorial(this int n)
		{
			return Enumerable.Range(1, n).Aggregate(BigInteger.One, (agg, x) => agg * x);
		}

		public static string FromIntToRomanNumeral(this int num)
		{
			var sb = new StringBuilder();
			var remaining = num;

			foreach (var numeral in _romanNumerals)
			{
				while (remaining >= numeral.Key)
				{
					sb.Append(numeral.Value);
					remaining -= numeral.Key;
				}
			}

			return sb.ToString();
		}

		public static bool IsCoprimeWith(this int n, int u)
		{
			return ((ulong)n).IsCoprimeWith((ulong)u);
		}

		public static bool IsPrime(this int n)
		{
			return Prime.IsPrime((uint)Math.Abs(n));
		}

		#region _powersOfTen
		private static readonly Dictionary<int, ulong> _powersOfTen = new Dictionary<int, ulong>
			{
				{0,  1},
				{1,  10},
				{2,  100},
				{3,  1000},
				{4,  10000},
				{5,  100000},
				{6,  1000000},
				{7,  10000000},
				{8,  100000000},
				{9,  1000000000},
				{10, 10000000000},
				{11, 100000000000},
				{12, 1000000000000},
				{13, 10000000000000},
				{14, 100000000000000},
				{15, 1000000000000000},
				{16, 10000000000000000},
				{17, 100000000000000000},
				{18, 1000000000000000000},
				{19, 10000000000000000000}
			};
		#endregion
		public static ulong RaiseTenToThis(this int n)
		{
			return _powersOfTen[n];
		}

		public static int Squared(this int n)
		{
			return n * n;
		}

		public static string SquareRootPeriod(this int n)
		{
			var sqrt = Math.Sqrt(n);

			if ((int)sqrt == sqrt)
				return string.Empty;

			var digits = new List<int>();

			var integral = (int)sqrt;
			var firstDen = n - integral * integral;

			var x = integral;
			var den = firstDen;

			do
			{
				digits.Add((integral + x) / den);

				x = digits[digits.Count - 1] * den - x;
				den = (n - x * x) / den;
			}
			while (x != integral || den != firstDen);

			return string.Concat("[", integral, ";(", string.Join(",", digits), ")]");
		}

		public static int Totient(this int n)
		{
			var primes = Prime.PrimeFactors((ulong)n).Keys;

			var denominator = primes.Aggregate(1L, (agg, p) => agg * (int)p);
			var numerator = primes.Aggregate((long)n, (agg, p) => agg * (int)(p - 1));

			return (int)(numerator / denominator);
		}

		#endregion

		#region long extension methods

		public static bool IsPrime(this long n)
		{
			return Prime.IsPrime((ulong)Math.Abs(n));
		}

		public static long GreatestCommonDenominatorWith(this long n, long l)
		{
			var a = Math.Max(Math.Abs(n), Math.Abs(l));
			var b = Math.Min(Math.Abs(n), Math.Abs(l));

			long mod;
			while ((mod = a % b) != 0)
			{
				a = b;
				b = mod;
			}
			return b;
		}

		#endregion

		#region ulong extension methods

		public static bool IsCoprimeWith(this ulong n, ulong u)
		{
			return !Prime.PrimeFactors(n).Keys.Intersect(Prime.PrimeFactors(u).Keys).Any();
		}

		public static bool IsPrime(this ulong n)
		{
			return Prime.IsPrime(n);
		}

		public static IEnumerable<ulong> Rotations(this ulong n)
		{
			yield return n;

			var x = n.ToString().Length - 1;
			var m = x.RaiseTenToThis();
			for (var i = 0; i < x; i++)
				yield return n = m * (n % 10) + n / 10;
		}

		#endregion

		#region byte extension methods

		public static int Square(this byte b)
		{
			return b * b;
		}

		#endregion

		#region Generic extension methods

		public static IEnumerable<List<T>> Combinations<T>(this IEnumerable<T> values, int size)
		{
			var orderedValues = values.OrderBy(t => t).ToList();
			foreach (var value in orderedValues.Distinct())
			{
				var newCombo = new List<T> {value};
				if (size == 1)
					yield return newCombo;
				else
				{
					var index = orderedValues.IndexOf(value);
					foreach (var subCombo in orderedValues.Where((t, i) => i > index).Combinations(size - 1))
					{
						yield return newCombo.Concat(subCombo).ToList();
					}
				}
			}
		}

		public static IEnumerable<T> ExceptOne<T>(this IEnumerable<T> values, T valueToExclude)
		{
			return values.Except(new[] {valueToExclude});
		}

		public static int ForEach<T>(this IEnumerable<T> values, Action<T> action)
		{
			var count = 0;
			foreach (var value in values)
			{
				action(value);
				++count;
			}
			return count;
		}

		public static int IndexOf<T>(this T[] array, T value)
		{
			return Array.IndexOf(array, value);
		}

		public static List<T> InsertAndReturn<T>(this List<T> list, int startIndex, T value)
		{
			list.Insert(startIndex, value);
			return list;
		}

		public static bool IsBetween<T>(this T toCheck, T min, T max) where T : IComparable
		{
			return toCheck.CompareTo(min) >= 0 && toCheck.CompareTo(max) <= 0;
		}

		public static string Join<T>(this IEnumerable<T> values, string separator)
		{
			return string.Join(separator, values);
		}

		public static IEnumerable<T[]> Permutations<T>(this IEnumerable<T> values)
		{
			if (values.Count() == 1)
				yield return values.ToArray();
			else
				for (var i = 0; i < values.Count(); i++)
					foreach (var p in Permutations(values.Take(i).Concat(values.Skip(i + 1))))
						yield return values.Skip(i).Take(1).Concat(p).ToArray();
		}

		#endregion

		#region BigInteger extension methods

		public static int SumOfDigits(this BigInteger bigInteger)
		{
			return bigInteger.ToString().ToCharArray().Select(c => c - '0').Sum();
		}

		public static BigInteger SquareRoot(this BigInteger bigInteger)
		{
			var sqrt = BigInteger.Pow(10, (bigInteger.ToString().Length - 1)/2);

			var changed = true;
			while (changed)
			{
				var newSqrt = sqrt - (sqrt * sqrt - bigInteger) / (2 * sqrt);
				changed = newSqrt != sqrt;
				sqrt = newSqrt;
			}

			return sqrt * sqrt <= bigInteger ? sqrt : sqrt - 1;
		}

		#endregion

		#region Point[] extension methods

		public static bool FilledAreaContains(this Point[] points, Point point)
		{
			if (points.Contains(point)) return true;

			var calc = 0;
			for (var i = 0; i < points.Length; i++)
			{
				var newCalc = ((point.Y - points[i].Y) * (points[(i + 1) % points.Length].X - points[i].X))
					.CompareTo((point.X - points[i].X) * (points[(i + 1) % points.Length].Y - points[i].Y));

				if (calc != 0 && newCalc != 0 && newCalc != calc)
					return false;

				if (newCalc != 0)
					calc = newCalc;
			}

			return true;
		}

		#endregion
	}
}
