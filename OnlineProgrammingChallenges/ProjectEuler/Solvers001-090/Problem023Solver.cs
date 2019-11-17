using System.ComponentModel;
using System.Linq;

namespace ProjectEuler.Solvers
{
	[Description("Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.")]
	public class Problem023Solver : IProblemSolver
	{
		public string Execute()
		{
			const int stop = 20161; // The actual largest number that cannot be writeen as the sum of two abundant numbers

			var abundantNumbers = Enumerable
				.Range(1, stop)
				.Where(n => n
					.Divisors()
					.Where(d => d != n)
					.Sum()
					> n)
				.ToList();

			return Enumerable
				.Range(1, stop)
				.Except(from a in abundantNumbers
				        from b in abundantNumbers
				        select a + b)
				.Sum()
				.ToString();
		}
	}
}
