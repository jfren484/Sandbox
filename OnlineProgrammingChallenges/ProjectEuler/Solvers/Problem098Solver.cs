// ReSharper disable AccessToModifiedClosure
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using ProjectEuler.InputFiles;

namespace ProjectEuler.Solvers
{
	[Description("Investigating words, and their anagrams, which can represent square numbers.")]
	public class Problem098Solver : IProblemSolver
	{
		public string Execute()
		{
			var squareAnagramNumbers = Enumerable.Range(1, 31622)
				.Select(i => (i * i).ToString())
				.Select(n => new {Number = n, Key = n.PermutationKey()})
				.GroupBy(n => n.Key)
				.Where(g => g.Count() > 1)
				.Select(g => g.Select(a => a.Number))
				.SelectMany(l => l.Combinations(2))
				.Select(l => l.OrderByDescending(s => s).ToList())
				.OrderByDescending(p => int.Parse(p[0]))
				.ToList();

			List<string> pairNums = null;
			List<string> pairWords = null;
			foreach (var pair in squareAnagramNumbers)
			{
				var num1 = pair[0];
				var num2 = pair[1];
				var words = Problem098Input.Words.Where(w => w.Length == num1.Length).ToList();

				foreach (var word in words)
				{
					var mapping = num1.ToCharArray().Distinct().ToDictionary(c => c, c => word[num1.IndexOf(c)]);
					if (mapping.Values.Distinct().Count() != mapping.Count) continue;

					var word1 = string.Concat(num1.ToCharArray().Select(c => mapping[c]));
					if (!word1.Equals(word)) continue;

					var word2 = string.Concat(num2.ToCharArray().Select(c => mapping[c]));
					if (!words.Contains(word2)) continue;

					pairNums = pair;
					pairWords = new List<string> { word1, word2 };
					break;
				}

				if (pairNums != null)
					break;
			}

			return pairWords == null
			       	? "Couldn't find answer."
			       	: "{0} = {1}, {2}, {3}".DoFormat(pairWords[0], pairNums[0], pairWords[1], pairNums[1]);
		}
	}
}
// ReSharper restore AccessToModifiedClosure
