using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;

namespace ProjectEuler.Solvers
{
	[Description("How many letters would be needed to write all the numbers in words from 1 to 1000?")]
	public class Problem017Solver : IProblemSolver
	{
		#region String Dictionaries

		private static readonly Dictionary<int, string> _onesDigits =
			new Dictionary<int, string>
				{
					{ 0, "" },
					{ 1, "one" },
					{ 2, "two" },
					{ 3, "three" },
					{ 4, "four" },
					{ 5, "five" },
					{ 6, "six" },
					{ 7, "seven" },
					{ 8, "eight" },
					{ 9, "nine" },
				};

		private static readonly Dictionary<int, string> _teens =
			new Dictionary<int, string>
				{
					{ 0, "ten" },
					{ 1, "eleven" },
					{ 2, "twelve" },
					{ 3, "thirteen" },
					{ 4, "fourteen" },
					{ 5, "fifteen" },
					{ 6, "sixteen" },
					{ 7, "seventeen" },
					{ 8, "eighteen" },
					{ 9, "nineteen" },
				};

		private static readonly Dictionary<int, string> _tensDigits =
			new Dictionary<int, string>
				{
					{ 0, "" },
					{ 1, "" },
					{ 2, "twenty" },
					{ 3, "thirty" },
					{ 4, "forty" },
					{ 5, "fifty" },
					{ 6, "sixty" },
					{ 7, "seventy" },
					{ 8, "eighty" },
					{ 9, "ninety" },
				};

		#endregion

		public string Execute()
		{
			var numbers = Enumerable.Range(1, 1000);
			var strings = numbers.Select(IntToLongString).ToList();
			var linqSum = strings.Select(s => s.Length).Sum().ToString();

			return linqSum;
		}

		public static string IntToLongString(int n)
		{
			if (n == 1000) return "onethousand";

			var str = string.Empty;

			var hund = n / 100 % 10;
			var ten = n / 10 % 10;
			var one = n % 10;

			if (hund > 0)
			{
				str += _onesDigits[hund] + "hundred";
				if (ten + one > 0)
					str += "and";
			}

			if (ten == 1)
				str += _teens[one];
			else
				str += _tensDigits[ten] + _onesDigits[one];

			return str;
		}
	}
}
