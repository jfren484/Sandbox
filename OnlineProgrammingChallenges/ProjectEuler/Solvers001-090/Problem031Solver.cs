using System.ComponentModel;

namespace ProjectEuler.Solvers
{
	[Description("Investigating combinations of English currency denominations.")]
	public class Problem031Solver : IProblemSolver
	{
		public string Execute()
		{
			var count = 1; // 2 pound coin
			for (var l = 200; l >= 0; l -= 100)
				for (var p50 = 200 - l; p50 >= 0; p50 -= 50)
				{
					var rem20 = 200 - l - p50;
					for (var p20 = rem20 - rem20 % 20; p20 >= 0; p20 -= 20)
						for (var p10 = 200 - l - p50 - p20; p10 >= 0; p10 -= 10)
							for (var p05 = 200 - l - p50 - p20 - p10; p05 >= 0; p05 -= 5)
								count += (200 - l - p50 - p20 - p10 - p05) / 2 + 1;
				}

			return count.ToString();
		}
	}
}
