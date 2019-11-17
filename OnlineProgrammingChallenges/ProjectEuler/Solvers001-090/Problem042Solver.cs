using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using ProjectEuler.InputFiles;

namespace ProjectEuler.Solvers
{
	[Description("How many triangle words does the list of common English words contain?")]
	public class Problem042Solver : IProblemSolver
	{
		public string Execute()
		{
			var scores = Problem042Input.Words.Select(w => w.ToCharArray().Sum(c => c - '@'));

			var triangleValues = new HashSet<int>(Enumerable.Range(1, 30).Select(i => i * (i + 1) / 2));

			return scores.Count(triangleValues.Contains).ToString();
		}
	}
}
