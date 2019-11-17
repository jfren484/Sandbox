using System;
using System.ComponentModel;
using System.Linq;

namespace ProjectEuler.Solvers
{
	[Description("Find the sum of all numbers less than one million, which are palindromic in base 10 and base 2.")]
	public class Problem036Solver : IProblemSolver
	{
		public string Execute()
		{
			var numbers = Enumerable
				.Range(1, 999999)
				.Where(n => n.ToString().IsPalindrome()
					&& Convert.ToString(n, 2).IsPalindrome());

			return numbers.Sum().ToString();
		}
	}
}
