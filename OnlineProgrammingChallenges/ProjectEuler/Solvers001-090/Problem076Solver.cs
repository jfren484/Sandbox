using System.ComponentModel;

namespace ProjectEuler.Solvers
{
	[Description("How many different ways can one hundred be written as a sum of at least two positive integers?")]
	public class Problem076Solver : IProblemSolver
	{
		public string Execute()
		{
			var array = new int[101,101];
			array[0, 0] = 1;

			for (var row = 0; row < array.GetLength(0); row++)
			{
				for (var col = 1; col < array.GetLength(1); col++)
				{
					array[row, col] = array[row, col - 1];
					if (col <= row)
						array[row, col] += array[row - col, col];
				}
			}

			return (array[100, 100] - 1).ToString();
		}
	}
}
