using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;

namespace ProjectEuler.Solvers
{
	[Description("What is the largest 1 to 9 pandigital that can be formed by multiplying a fixed number by 1, 2, 3, ... ?")]
	public class Problem038Solver : IProblemSolver
	{
		public string Execute()
		{
			var pandigitalProducts = new List<KeyValuePair<int, int>>();

			for (var x = 1; x < 10000; x++)
			{
				var used = new bool[10];
				used[0] = true;

				var sb = new StringBuilder();

				for (var i = 1; i < 10 && sb.Length < 9; i++)
				{
					var prod = (x * i).ToString();

					var appendable = false;
					if (sb.Length + prod.Length < 10)
					{
						appendable = true;
						foreach (var c in prod)
							if (used[c - '0'])
							{
								appendable = false;
								break;
							}
							else
								used[c - '0'] = true;
					}

					if (appendable)
						sb.Append(prod);
				}

				if (sb.Length == 9)
					pandigitalProducts.Add(new KeyValuePair<int, int>(x, int.Parse(sb.ToString())));
			}

			return pandigitalProducts.Last().ToString();
		}
	}
}
