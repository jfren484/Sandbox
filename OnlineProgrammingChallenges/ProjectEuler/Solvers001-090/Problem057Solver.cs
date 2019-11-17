using System.Collections.Generic;
using System.ComponentModel;
using System.Numerics;

namespace ProjectEuler.Solvers
{
	[Description("Investigate the expansion of the continued fraction for the square root of two.")]
	public class Problem057Solver : IProblemSolver
	{
		public string Execute()
		{
			var count = 0;

			var nums = new List<BigInteger> { 1, 1 };
			var dens = new List<BigInteger> { 0, 1 };
			const int a = 2;

			for (var i = 1; i < 1000; i++)
			{
				nums.Add(a * nums[1] + nums[0]);
				nums.RemoveAt(0);

				dens.Add(a * dens[1] + dens[0]);
				dens.RemoveAt(0);

				if (nums[1].ToString().Length > dens[1].ToString().Length)
					count++;
			}

			return count.ToString();
		}
	}
}
