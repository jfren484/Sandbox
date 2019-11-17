using System.ComponentModel;
using System.Linq;

namespace ProjectEuler.Solvers
{
	[Description("What is the difference between the sum of the squares and the square of the sums?")]
	public class Problem006Solver : IProblemSolver
	{
		public string Execute()
		{
			var numbers = Enumerable.Range(1, 100);

			var sumOfSquares = numbers.Sum(x => x * x);
			var sum = numbers.Sum();
			var squareOfSums = sum * sum;
			var diff = squareOfSums - sumOfSquares;

			return diff.ToString();
		}
	}
}
