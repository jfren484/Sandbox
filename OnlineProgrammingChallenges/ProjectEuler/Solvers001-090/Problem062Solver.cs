using System.ComponentModel;
using System.Linq;

namespace ProjectEuler.Solvers
{
	[Description("Find the smallest cube for which exactly five permutations of its digits are cube.")]
	public class Problem062Solver : IProblemSolver
	{
		public string Execute()
		{
			var cube = (from i in Enumerable.Range(5, 99995)
			            let c = (long)i * i * i
			            group c by c.ToString().PermutationKey()
			            into g
			            where g.Count() == 5
			            select g.First())
				.First();

			return cube.ToString();
		}
	}
}
