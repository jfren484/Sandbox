using System.ComponentModel;

namespace ProjectEuler.Solvers
{
	[Description("After 40755, what is the next triangle number that is also pentagonal and hexagonal?")]
	public class Problem045Solver : IProblemSolver
	{
		public string Execute()
		{
			var hIndex = 143;

			int h;
			do h = Numeric.NthHexagonal(++hIndex); while (!Numeric.IsPentagonal(h));

			return h.ToString();
		}
	}
}
