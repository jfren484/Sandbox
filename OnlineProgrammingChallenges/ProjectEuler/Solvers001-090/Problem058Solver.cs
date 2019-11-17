using System.ComponentModel;

namespace ProjectEuler.Solvers
{
	[Description("Investigate the number of primes that lie on the diagonals of the spiral grid.")]
	public class Problem058Solver : IProblemSolver
	{
		public string Execute()
		{
			ulong size = 3;
			ulong corner = 9;
			ulong primes = 3;

			while (primes * 10 >= size * 2 - 1)
			{
				size += 2;

				for (var i = 0; ; i++)
				{
					corner += size - 1;
					if (i == 3) break;
					if (Prime.IsPrimeNoSieve(corner))
						primes++;
				}
			}

			return size.ToString();
		}
	}
}
