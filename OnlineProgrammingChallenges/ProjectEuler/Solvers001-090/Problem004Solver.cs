using System.ComponentModel;

namespace ProjectEuler.Solvers
{
	[Description("Find the largest palindrome made from the product of two 3-digit numbers.")]
	public class Problem004Solver : IProblemSolver
	{
		public string Execute()
		{
			var largest = 0;

			for (var i = 100; i < 1000; i++)
			{
				for (var j = i; j < 1000; j++)
				{
					var product = i * j;

					if (product > largest && product.ToString().IsPalindrome())
						largest = product;
				}
			}

			return largest.ToString();
		}
	}
}
