using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;

namespace ProjectEuler.Solvers
{
	[Description("By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.")]
	public class Problem002Solver : IProblemSolver
	{
		public string Execute()
		{
			var nums = new List<int> {1, 2};
			while (true)
			{
				var num = nums[nums.Count - 1] + nums[nums.Count - 2];
				if (num > 4000000) break;
				nums.Add(num);
			}

			return nums.Where(i => i%2 == 0).Sum().ToString();
		}
	}
}
