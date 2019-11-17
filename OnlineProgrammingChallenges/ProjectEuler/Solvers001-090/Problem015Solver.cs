using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;

namespace ProjectEuler.Solvers
{
	[Description("Starting in the top left corner in a 20 by 20 grid, how many routes are there to the bottom right corner?")]
	public class Problem015Solver : IProblemSolver
	{
		private const int GridSize = 20;
		private static readonly Dictionary<Size, long> _pathsDictionary = new Dictionary<Size, long>();

		public string Execute()
		{
			return GetPathsThroughRectangle(new Size(GridSize, GridSize)).ToString();
		}

		private static long GetPathsThroughRectangle(Size size)
		{
			if (!_pathsDictionary.ContainsKey(size))
			{
				long paths = 1;

				if (size.Width > 0 && size.Height > 0)
					paths = GetPathsThroughRectangle(new Size(size.Width - 1, size.Height))
						+ GetPathsThroughRectangle(new Size(size.Width, size.Height - 1));

				_pathsDictionary.Add(size, paths);
			}

			return _pathsDictionary[size];
		}
	}
}
