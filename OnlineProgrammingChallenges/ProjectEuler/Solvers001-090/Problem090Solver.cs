using System.ComponentModel;
using System.Linq;

namespace ProjectEuler.Solvers
{
	[Description("An unexpected way of using two cubes to make a square.")]
	public class Problem090Solver : IProblemSolver
	{
		public string Execute()
		{
			var squares = new[] {"01", "04", "06", "16", "25", "36", "64", "81",};

			var allDice = "0123456789".Combinations(6).Select(c => new string(c.ToArray()));

			var diePairs = (from die1 in allDice
			                from die2 in allDice
			                where die1.CompareTo(die2) <= 0
			                let d1 = die1.Replace('9', '6')
			                let d2 = die2.Replace('9', '6')
			                where squares.All(s => d1.IndexOf(s[0]) >= 0 && d2.IndexOf(s[1]) >= 0 ||
			                                       d1.IndexOf(s[1]) >= 0 && d2.IndexOf(s[0]) >= 0)
			                select new {die1, die2});

			return diePairs.Count().ToString();
		}
	}
}
