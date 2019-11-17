using System.ComponentModel;

namespace ProjectEuler.Solvers
{
	[Description("Finding the number of blue discs for which there is 50% chance of taking two blue.")]
	public class Problem100Solver : IProblemSolver
	{
		public string Execute()
		{
			long blue = 1, red = 0;

			while (blue + red < 1000000000000)
			{
				--red;
				var newBlue = 5 * blue + 2 * red;
				red = 2 * blue + red;
				blue = newBlue;
			}

			return blue.ToString();
		}
	}
}
