using System;
using System.ComponentModel;

namespace ProjectEuler.Solvers
{
	[Description("Exploring the shortest path from one corner of a cuboid to another.")]
	public class Problem086Solver : IProblemSolver
	{
		public string Execute()
		{
			const int stop = 1000000;
			var intLengths = 0;
			var m = 0;

			while (intLengths < stop)
			{
				var a = ++m;

				for (var x = a; x > 0; x--)
				{
					for (var y = x; y > 0; y--)
					{
						var length = Math.Sqrt(a * a + (x + y) * (x + y));

						if (length == (int)length)
							++intLengths;
					}
				}
			}

			return string.Format("{0} integer solutions for M = {1}", intLengths, m);
		}
	}
}
