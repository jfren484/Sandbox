using System.ComponentModel;

namespace ProjectEuler.Solvers
{
	[Description("Find the sum of digits in 100!")]
	public class Problem020Solver : IProblemSolver
	{
		public string Execute()
		{
			return 100.Factorial().SumOfDigits().ToString();
		}
	}
}
