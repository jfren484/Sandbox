using System;
using System.ComponentModel;
using ProjectEuler.InputFiles;

namespace ProjectEuler.Solvers
{
	[Description("Using an efficient algorithm find the maximal sum in the triangle?")]
	public class Problem067Solver : IProblemSolver
	{
		public string Execute()
		{
			for (var row = Problem067Input.Triangle.Length - 2; row >= 0; row--)
				for (var i = 0; i < Problem067Input.Triangle[row].Length; i++)
					Problem067Input.Triangle[row][i] += Math.Max(Problem067Input.Triangle[row + 1][i], Problem067Input.Triangle[row + 1][i + 1]);

			return Problem067Input.Triangle[0][0].ToString();
		}
	}
}
