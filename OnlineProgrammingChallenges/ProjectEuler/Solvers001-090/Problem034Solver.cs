using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;

namespace ProjectEuler.Solvers
{
	[Description("Find the sum of all numbers which are equal to the sum of the factorial of their digits.")]
	public class Problem034Solver : IProblemSolver
	{
		public string Execute()
		{
			var factorials = new Dictionary<char, int>(10);
			for (var c = '0'; c <= '9'; c++)
				factorials.Add(c, (int)(c - '0').Factorial());

			var numbers = new List<int>();
			for (var x = 10; x < 100000; x++)
				if (x.ToString().ToCharArray().Sum(c => factorials[c]) == x)
					numbers.Add(x);

			return numbers.Sum().ToString();
		}
	}
}
