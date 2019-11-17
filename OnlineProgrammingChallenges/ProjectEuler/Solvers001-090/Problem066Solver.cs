using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Numerics;

namespace ProjectEuler.Solvers
{
	[Description("Investigate the Diophantine equation x^2 − Dy^2 = 1.")]
	public class Problem066Solver : IProblemSolver
	{
		public string Execute()
		{
			var periods = (from n in Enumerable.Range(1, 1000)
			               let p = n.SquareRootPeriod()
			               where p.Length > 0
			               let semi = p.IndexOf(';')
			               select new
			               	{
			               		n,
			               		integral = int.Parse(p.Substring(1, semi - 1)),
			               		periodArray = p.Substring(semi + 2, p.Length - semi - 4)
			               			.Split(',')
									.Select(c => int.Parse(c))
									.ToArray()
			               	});

			var equations = new List<DiophantineEquation>();
			foreach (var x in periods)
			{
				var equation = new DiophantineEquation { X = x.integral, D = x.n, Y = 1 };

				BigInteger numSub1 = 1;
				BigInteger denSub1 = 0;

				var i = 0;
				while (!equation.IsValid())
				{
					var saveX = equation.X;
					var saveY = equation.Y;

					equation.X = x.periodArray[i] * equation.X + numSub1;
					equation.Y = x.periodArray[i] * equation.Y + denSub1;

					numSub1 = saveX;
					denSub1 = saveY;

					i = (i + 1) % x.periodArray.Length;
				}

				equations.Add(equation);
			}

			return equations.OrderByDescending(e => e.X).First().ToString();;
		}

		public class DiophantineEquation
		{
			public BigInteger X { get; set; }
			public int D { get; set; }
			public BigInteger Y { get; set; }

			public override string ToString()
			{
				return string.Format("{0}^2 - {1}x{2}^2 = 1", X, D, Y);
			}

			public bool IsValid()
			{
				return X * X - D * Y * Y == 1;
			}
		}
	}
}
