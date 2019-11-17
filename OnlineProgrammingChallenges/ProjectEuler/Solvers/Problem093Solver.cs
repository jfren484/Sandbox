using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;

namespace ProjectEuler.Solvers
{
	[Description("Using four distinct digits and the rules of arithmetic, find the longest sequence of target numbers.")]
	public class Problem093Solver : IProblemSolver
	{
		public string Execute()
		{
			var highestValue = 0;
			var highestSet = new List<int>();

			var sets = new[] {1, 2, 3, 4, 5, 6, 7, 8, 9}
				.Combinations(4);

			var operatorSets = Enumerable.Range(0, 64)
				.Select(i => new List<Expression.Operator> { Expression.AllOperators[(i / 16) % 4], Expression.AllOperators[(i / 4) % 4], Expression.AllOperators[i % 4] });

			var orderSets = (from a in new[] {0, 1, 2}
			                 from b in new[] {0, 1}
			                 select new List<int> {a, b, 0}).ToList();

			foreach (var set in sets)
			{
				var nums = (from digits in set.Permutations()
				            from ops in operatorSets
				            from order in orderSets
				            let result = new Expression
				            	{
				            		Numbers = digits.ToList(),
				            		Operators = ops,
				            		OperatorOrder = order
				            	}.Evaluate()
							where result > 0
				            orderby result
				            select result).Distinct().ToList();

				var n = 0;
				while (nums[n++] == n) ++n;
				--n;

				if (n > highestValue)
				{
					highestValue = n;
					highestSet = set;
				}
			}

			return string.Join("", highestSet);
		}
	}
}
