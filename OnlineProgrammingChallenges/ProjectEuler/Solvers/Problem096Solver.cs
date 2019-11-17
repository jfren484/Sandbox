using System;
using System.ComponentModel;
using System.Linq;
using ProjectEuler.InputFiles;

namespace ProjectEuler.Solvers
{
	[Description("Devise an algorithm for solving Su Doku puzzles.")]
	public class Problem096Solver : IProblemSolver
	{
		public string Execute()
		{
			var grids = Problem096Input.Grids.ToList();
			grids.ForEach(grid => grid.Solve());
			Console.WriteLine(grids[0].ToString());

			return grids.Sum(g => g.Code()).ToString();
		}
	}
}
