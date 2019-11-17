using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;

namespace ProjectEuler.Solvers
{
	[Description("Find the smallest prime which, by changing the same part of the number, can form eight different primes.")]
	public class Problem051Solver : IProblemSolver
	{
		public string Execute()
		{
			const string replaceStr = "*";
			const int max = 999999;

			var nonPrimeLastChars = new[] { '0', '2', '4', '5', '6', '8' };

			var wildIndicesList = new List<int[]>(20);
			for (var c = 0; c <= 3; c++)
				for (var b = c; b <= 3; b++)
					for (var a = b; a <= 3; a++)
						wildIndicesList.Add(new[] { a, b, c });

			Prime.CalculatePrimesToN(max);
			var primes = new HashSet<string>(Prime.Primes.Where(p => p < max).Select(p => p.ToString()));

			var prime = (from n in Enumerable.Range(100, 900)
			             from wildIndices in wildIndicesList
			             let family = n.ToString()
			             	.Insert(wildIndices[0], replaceStr)
			             	.Insert(wildIndices[1], replaceStr)
			             	.Insert(wildIndices[2], replaceStr)
			             from i in Enumerable.Range(0, 10)
			             let s = family.Replace(replaceStr, i.ToString())
			             where !nonPrimeLastChars.Contains(s[5])
			                && primes.Contains(s)
			             let kvp = new { Key = family, Value = s }
			             group kvp by kvp.Key into set
			             where set.Count() == 8
			             select set.Min(kvp => kvp.Value)).Single();

			return prime;
		}

		//var wildIndicesList = new[]
		//    {
		//        new[] { 0, 0, 0 }, // ***000
		//        new[] { 1, 0, 0 }, // **0*00
		//        new[] { 2, 0, 0 }, // **00*0
		//        new[] { 3, 0, 0 }, // **000*
		//        new[] { 1, 1, 0 }, // *0**00
		//        new[] { 2, 1, 0 }, // *0*0*0
		//        new[] { 3, 1, 0 }, // *0*00*
		//        new[] { 2, 2, 0 }, // *00**0
		//        new[] { 3, 2, 0 }, // *00*0*
		//        new[] { 3, 3, 0 }, // *000**
		//        new[] { 1, 1, 1 }, // 0***00
		//        new[] { 2, 1, 1 }, // 0**0*0
		//        new[] { 3, 1, 1 }, // 0**00*
		//        new[] { 2, 2, 1 }, // 0*0**0
		//        new[] { 3, 2, 1 }, // 0*0*0*
		//        new[] { 3, 3, 1 }, // 0*00**
		//        new[] { 2, 2, 2 }, // 00***0
		//        new[] { 3, 2, 2 }, // 00**0*
		//        new[] { 3, 3, 2 }, // 00*0**
		//        new[] { 3, 3, 3 }, // 000***
		//    };
	}
}
