using System.ComponentModel;
using System.Linq;

namespace ProjectEuler.Solvers
{
	[Description("What is the millionth lexicographic permutation of the digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?")]
	public class Problem024Solver : IProblemSolver
	{
		public string Execute()
		{
			var chars = "0123456789".ToCharArray();

			return (from a in chars
			        from b in chars.Except(new[] {a})
			        from c in chars.Except(new[] {a, b})
			        from d in chars.Except(new[] {a, b, c})
			        from e in chars.Except(new[] {a, b, c, d})
			        from f in chars.Except(new[] {a, b, c, d, e})
			        from g in chars.Except(new[] {a, b, c, d, e, f})
			        from h in chars.Except(new[] {a, b, c, d, e, f, g})
			        from i in chars.Except(new[] {a, b, c, d, e, f, g, h})
			        from j in chars.Except(new[] {a, b, c, d, e, f, g, h, i})
			        select new string(new[] {a, b, c, d, e, f, g, h, i, j}))
					.Take(1000000)
					.Last();
		}
	}
}
