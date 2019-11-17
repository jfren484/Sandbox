using System;
using System.ComponentModel;
using System.Linq;
using System.Numerics;

namespace ProjectEuler.Solvers
{
	[Description("Calculating the digital sum of the decimal digits of irrational square roots.")]
	public class Problem080Solver : IProblemSolver
	{
		public string Execute()
		{
			return (from i in Enumerable.Range(1, 100)
			        let sqrt = Math.Sqrt(i)
			        where sqrt != (int)sqrt
			        let bigInt = (BigInteger.Pow(10, 202) * i).SquareRoot()
			        select bigInt
			        	.ToString()
			        	.Substring(0, 100)
			        	.ToCharArray()
			        	.Select(c => c - '0')
			        	.Sum())
				.Sum()
				.ToString();
		}
	}
}
