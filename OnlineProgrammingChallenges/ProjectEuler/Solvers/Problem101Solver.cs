using System;
using System.Collections.Generic;
using System.ComponentModel;

namespace ProjectEuler.Solvers
{
	[Description("Investigate the optimum polynomial function to model the first k terms of a given sequence.")]
	public class Problem101Solver : IProblemSolver
	{
		public string Execute()
		{
			//var poly = new Polynomial(0, 0, 0, 1);
			var poly = new Polynomial(1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1);
			var terms = new List<Fraction>();
			var sumOfFits = new Fraction();

			for (var x = 1; x <= poly.Degree() + 1; x++)
			{
				terms.Add(poly.SolveFor(x));

				var interp = Polynomial.Interpolate(terms.ToArray());

				var fit = x <= poly.Degree() ? interp.SolveFor(x + 1) : 0;
				sumOfFits += fit;

				Console.WriteLine(@"x: {0}; polynomial: {1}; FIT: {2}", x, interp, fit);
			}

			return sumOfFits.ToString();
		}
	}
}
