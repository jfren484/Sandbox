using System.ComponentModel;
using System.Linq;

namespace ProjectEuler.Solvers
{
	[Description("Find the last ten digits of 1^1 + 2^2 + ... + 1000^1000.")]
	public class Problem048Solver : IProblemSolver
	{
		public string Execute()
		{
			const long tenDigits = 10000000000;

			var bignum = Enumerable
				.Range(1, 1000)
				.Where(i => i % 10 != 0)
				.Sum(i =>
				     	{
				     		long pow = i;
							for (var j = 1; j < i; j++)
								pow = (pow * i) % tenDigits;
				     		return pow;
				     	})
				% tenDigits;

			return bignum.ToString();
		}
	}
}
