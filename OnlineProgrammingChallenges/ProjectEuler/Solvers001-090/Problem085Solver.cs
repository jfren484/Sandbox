using System;
using System.ComponentModel;

namespace ProjectEuler.Solvers
{
	[Description("Investigating the number of rectangles in a rectangular grid.")]
	public class Problem085Solver : IProblemSolver
	{
		public string Execute()
		{
			var minDiff = long.MaxValue;
			var saveX = 0;
			var saveY = 0;

			for (var x = 2000; x > 0; x--)
				for (var y = 1; y <= 2000; y++)
				{
					var diff = Math.Abs(2000000 - CountRectangles(x, y));
					if (diff < minDiff)
					{
						minDiff = diff;
						saveX = x;
						saveY = y;
					}
				}

			return string.Format("{0} x {1} ({2} total area) yields diff of {3} rectangles.", saveX, saveY, saveX * saveY, minDiff);
		}

		private static long CountRectangles(long width, long height)
		{
			return checked((width * width + width) * (height * height + height) / 4);
		}
	}
}
