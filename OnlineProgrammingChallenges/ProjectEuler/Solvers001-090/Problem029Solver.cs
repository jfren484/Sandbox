﻿using System.ComponentModel;
using System.Linq;
using System.Numerics;

namespace ProjectEuler.Solvers
{
	[Description("How many distinct terms are in the sequence generated by a^b for 2 ≤ a ≤ 100 and 2 ≤ b ≤ 100?")]
	public class Problem029Solver : IProblemSolver
	{
		public string Execute()
		{
			var range = Enumerable.Range(2, 99);
			var num = (from a in range
			           from b in range
			           select BigInteger.Pow(a, b)).Distinct().Count();
			return num.ToString();
		}
	}
}