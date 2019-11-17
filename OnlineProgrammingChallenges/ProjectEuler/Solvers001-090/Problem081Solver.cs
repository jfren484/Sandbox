using System;
using System.ComponentModel;
using ProjectEuler.InputFiles;

namespace ProjectEuler.Solvers
{
	[Description("Find the minimal path sum from the top left to the bottom right by moving right and down.")]
	public class Problem081Solver : IProblemSolver
	{
		public string Execute()
		{
			var grid = Problem081To083Input.Grid;

			var lastRow = grid.GetLength(0) - 1;
			var lastCol = grid.GetLength(1) - 1;

			for (var row = lastRow; row >= 0; row--)
			{
				for (var col = lastCol; col >= 0; col--)
				{
					var right = col == lastCol ? int.MaxValue : grid[row, col + 1];
					var down = row == lastRow ? int.MaxValue : grid[row + 1, col];

					grid[row, col] += Math.Min(right, down);
				}
			}

			return grid[0, 0].ToString();
		}
	}
}
