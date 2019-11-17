using System.ComponentModel;
using System.Numerics;

namespace ProjectEuler.Solvers
{
	[Description("What is the first term in the Fibonacci sequence to contain 1000 digits?")]
	public class Problem025Solver : IProblemSolver
	{
		public string Execute()
		{
			var stop = BigInteger.Pow(10, 999);

			var a = new BigInteger(1);
			var b = new BigInteger(1);
			int i;
			for (i = 2; b < stop; i++)
			{
				var c = a + b;
				a = b;
				b = c;
			}

			return i.ToString();
		}
	}
}
