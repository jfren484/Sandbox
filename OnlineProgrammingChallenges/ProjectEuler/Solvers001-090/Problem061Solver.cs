using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;

namespace ProjectEuler.Solvers
{
	[Description("Find the sum of the only set of six 4-digit figurate numbers with a cyclic property.")]
	public class Problem061Solver : IProblemSolver
	{
		private static readonly Dictionary<string, List<bool>> _numbers = new Dictionary<string, List<bool>>();

		public string Execute()
		{
			#region Set up _numbers dictionary

			var used = new[] { false, false, false, false, false, false };
			Func<int, int>[] functions = {Numeric.NthOctagonal, Numeric.NthHeptagonal, Numeric.NthHexagonal,Numeric.NthPentagonal, Numeric.NthSquare, Numeric.NthTriangle};

			// Populate dictionary
			var startFunc = 0;
			for (var n = 0; startFunc < functions.Length; n++)
			{
				for (var i = startFunc; i < functions.Length; i++)
				{
					var num = functions[i](n);

					if (num < 1000) continue; // Skip all <4-digit numbers

					if (num >= 10000)
						startFunc++;
					else
					{
						var str = num.ToString();
						if (str[2] == '0') continue; // Won't be cyclic-able.

						if (!_numbers.ContainsKey(str))
							_numbers.Add(str, new List<bool>(used));

						_numbers[str][i] = true;
					}
				}
			}

			// Remove any values that don't have cyclic counterparts
			int removed;
			do
			{
				var nonCyclic = _numbers.Keys
					.Where(n => !_numbers.Keys.Any(n2 => n2 != n && n2[0] == n[2] && n2[1] == n[3])
					            || !_numbers.Keys.Any(n2 => n2 != n && n2[2] == n[0] && n2[3] == n[1]))
					.ToList();
				foreach (var num in nonCyclic.ToList())
					_numbers.Remove(num);

				removed = nonCyclic.Count;
			} while (removed > 0);

			#endregion

			return TryNextValues(new List<string>(), _numbers.Keys.ToList());
		}

		private static string TryNextValues(ICollection<string> chain, IEnumerable<string> keys)
		{
			foreach (var key in keys.Where(k => (chain.Count == 0 || k[0] == chain.Last()[2] && k[1] == chain.Last()[3])
												&& (chain.Count < 5 || k[2] == chain.First()[0] && k[3] == chain.First()[1])))
			{
				chain.Add(key);

				if (chain.Count < 6)
				{
					var result = TryNextValues(chain, keys.Except(new[] {key}));
					if (result != null)
						return result;
				}
				else
				{
					if (chain.Select(s => _numbers[s])
							 .Aggregate(Enumerable.Repeat(false, 6),
										(agg, current) => agg.Zip(current,
																  (val1, val2) => val1 || val2))
							 .All(b => b))
						return string.Format("Chain: {{{0}}}, Sum: {1}",
						                     string.Join(",", chain),
						                     chain.Select(s => int.Parse(s)).Sum());
				}

				chain.Remove(key);
			}

			return null;
		}
	}
}
