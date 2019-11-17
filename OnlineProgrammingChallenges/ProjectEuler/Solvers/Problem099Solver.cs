using System;
using System.ComponentModel;
using System.Linq;
using ProjectEuler.InputFiles;

namespace ProjectEuler.Solvers
{
	[Description("Which base/exponent pair in the file has the greatest numerical value?")]
	public class Problem099Solver : IProblemSolver
	{
		public string Execute()
		{
			return (from pair in Problem099Input.Pairs
			        orderby Math.Log(pair[0]) * pair[1] descending
			        select Problem099Input.Pairs.IndexOf(pair) + 1)
				.First()
				.ToString();
		}
	}
}
