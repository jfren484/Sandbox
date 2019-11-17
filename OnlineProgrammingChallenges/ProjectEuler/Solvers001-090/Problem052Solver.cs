using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;

namespace ProjectEuler.Solvers
{
	[Description("Find the smallest positive integer, x, such that 2x, 3x, 4x, 5x, and 6x, contain the same digits in some order.")]
	public class Problem052Solver : IProblemSolver
	{
		public string Execute()
		{
			var x = 0;
			var answer = 0;
			while (answer == 0)
			{
				var origKey = Key(++x);
				var valid = true;
				for (var i = 2; valid && i <= 6; i++)
					if (Key(x * i) != origKey)
						valid = false;

				if (valid)
					answer = x;
			}

			return answer.ToString();
		}

		private static readonly Dictionary<long, long> _keys = new Dictionary<long, long>();
		private static long Key(long n)
		{
			if (!_keys.ContainsKey(n))
				_keys.Add(n, n.ToString().PermutationKey());

			return _keys[n];
		}
	}
}
