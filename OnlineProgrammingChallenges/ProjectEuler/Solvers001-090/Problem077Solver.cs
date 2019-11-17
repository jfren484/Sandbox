using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;

namespace ProjectEuler.Solvers
{
	[Description("What is the first value which can be written as the sum of primes in over five thousand different ways?")]
	public class Problem077Solver : IProblemSolver
	{
		public string Execute()
		{
			const int max = 75;
			Prime.CalculatePrimesToN(max);

			var values = new List<int>(from p in Prime.Primes where p <= max select (int)p);
			values.Insert(0, 0);

			var array = new int[max + 1][];
			for (var i = 0; i < array.Length; i++)
				array[i] = new int[values.Count];
			array[0][0] = 1;

			var firstOver5000 = -1;

			for (var row = 0; row < array.Length; row++)
			{
				for (var col = 1; col < array[row].Length; col++)
				{
					var count = array[row][col - 1];
					if (values[col] <= row)
						count += array[row - values[col]][col];

					array[row][col] = count;

					if (count > 5000 && firstOver5000 < 0)
						firstOver5000 = row;
				}
			}

			return string.Format("Value {0} can be written as the sum of primes {1} different ways.", firstOver5000, array[firstOver5000].Last());
		}
	}
}
