using System.ComponentModel;
using System.Linq;

namespace ProjectEuler.Solvers
{
	[Description("Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.")]
	public class Problem030Solver : IProblemSolver
	{
		public string Execute()
		{
			var powersOfFive = Enumerable.Range(0, 10).Select(i => i * i * i * i * i).ToArray();

			var nums = (from x in Enumerable.Range(10, 354284) // largest possible would be 354294
			            where x == x.ToString().ToCharArray().Select(c => powersOfFive[c - '0']).Sum()
			            select x).ToList();

			return nums.Sum().ToString();
		}
	}
}
