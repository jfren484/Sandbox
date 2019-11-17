using System.ComponentModel;
using System.Linq;
using System.Numerics;

namespace ProjectEuler.Solvers
{
	[Description("Considering natural numbers of the form, a^b, finding the maximum digital sum.")]
	public class Problem056Solver : IProblemSolver
	{
		public string Execute()
		{
			var nums = Enumerable.Range(1, 99);

			var sums = from a in nums
					   from b in nums
					   let pow = BigInteger.Pow(new BigInteger(a), b)
					   select pow
						   .ToString()
						   .ToCharArray()
						   .Select(c => c - '0')
						   .Sum();

			return sums.Max().ToString();
		}
	}
}
