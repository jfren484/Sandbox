using System.ComponentModel;
using System.Linq;

namespace ProjectEuler.Solvers
{
	[Description("Add all the natural numbers below one thousand that are multiples of 3 or 5.")]
	public class Problem001Solver : IProblemSolver
	{
		public string Execute()
		{
			return Enumerable.Range(1, 999).Where(i => i%3 == 0 || i%5 == 0).Sum().ToString();
		}
	}
}
