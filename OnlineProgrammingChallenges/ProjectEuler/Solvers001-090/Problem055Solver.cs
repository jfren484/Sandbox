using System.ComponentModel;
using System.Numerics;

namespace ProjectEuler.Solvers
{
	[Description("How many Lychrel numbers are there below ten-thousand?")]
	public class Problem055Solver : IProblemSolver
	{
		public string Execute()
		{
			var count = 0;

			for (var n = 1; n < 10000; n++)
			{
				var s = Double(n.ToString());
				var iter = 0;

				while (!s.IsPalindrome() && ++iter < 50)
					s = Double(s);

				if (iter >= 50)
					count++;
			}

			return count.ToString();
		}

		public string Double(string s)
		{
			var rev = s.Reverse();
			string newValue;

			if (s.Length < 9)
				newValue = (int.Parse(s) + int.Parse(rev)).ToString();
			else if (s.Length < 18)
				newValue = (long.Parse(s) + long.Parse(rev)).ToString();
			else
				newValue = (BigInteger.Parse(s) + BigInteger.Parse(s.Reverse())).ToString();

			return newValue;
		}
	}
}
