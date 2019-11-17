using System;
using System.ComponentModel;
using ProjectEuler.InputFiles;

namespace ProjectEuler.Solvers
{
	[Description("Find the minimal path sum from the left column to the right column.")]
	public class Problem082Solver : IProblemSolver
	{
		public string Execute()
		{
			var grid = Problem081To083Input.Grid;

			var rows = grid.GetLength(0);

			var paths = new int[rows,2];
			var offset = new[] {-1, 1};

			for (var col = grid.GetLength(1) - 2; col >= 0; col--)
			{
				for (var dir = 0; dir < 2; dir++)
				{
					for (var i = 0; i < rows; i++)
					{
						var row = dir == 0 ? i : rows - i - 1;
						var right = grid[row, col + 1];
						var vert = i == 0 ? int.MaxValue : paths[row + offset[dir], dir];

						paths[row, dir] = grid[row, col] + Math.Min(right, vert);
					}
				}

				for (var row = 0; row < rows; row++)
					grid[row, col] = Math.Min(paths[row, 0], paths[row, 1]);
			}

			var min = grid[0, 0];
			for (var row = 1; row < rows; row++)
				if (grid[row, 0] < min)
					min = grid[row, 0];

			return min.ToString();
		}
	}
}
