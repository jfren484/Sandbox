using System.Collections.Generic;
using System.ComponentModel;
using System.Numerics;

namespace ProjectEuler.Solvers
{
	[Description("Find the sum of digits in the numerator of the 100th convergent of the continued fraction for e.")]
	public class Problem065Solver : IProblemSolver
	{
		public string Execute()
		{
			var nums = new List<BigInteger> { 1, 2 };
			var dens = new List<BigInteger> { 0, 1 };

			for (var i = 1; i < 100; i++)
			{
				var a = i % 3 == 2 ? (i / 3 + 1) * 2 : 1;
				nums.Add(a * nums[1] + nums[0]);
				nums.RemoveAt(0);

				dens.Add(a * dens[1] + dens[0]);
				dens.RemoveAt(0);
			}

			return nums[1].SumOfDigits().ToString();
		}
	}
}
