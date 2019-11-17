using System.ComponentModel;
using System.Linq;

namespace ProjectEuler.Solvers
{
	[Description("Find the value of n ≤ 1,000,000 for which n/φ(n) is a maximum.")]
	public class Problem069Solver : IProblemSolver
	{
		public string Execute()
		{
			Prime.CalculatePrimesToN(25);

			var i = 0;
			var n = 1;
			var newProd = 1;
			while (newProd <= 1000000)
			{
				n = newProd;
				newProd *= (int)Prime.Primes[i++];
			}

			return n.ToString();
		}

		public string HardWay()
		{
			Prime.CalculatePrimesToN(1000);

			var totients = Enumerable.Range(2, 999999).ToDictionary(i => i, i => i.Totient());
			var max = totients.OrderByDescending(kvp => (double)kvp.Key / kvp.Value).First();

			return string.Format("Max n / totient of {0} for totient => {1} and n => {2}", (double)max.Key / max.Value, max.Value, max.Key);
		}
	}
}
