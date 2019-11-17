using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;

namespace ProjectEuler.Solvers
{
	[Description("In the game, Monopoly, find the three most popular squares when using two 4-sided dice.")]
	public class Problem084Solver : IProblemSolver
	{
		public string Execute()
		{
			const int dieSides = 4;
			const int boardSquares = 40;

			var dieRolls = Enumerable.Range(1, dieSides);
			var dieRolls2 = from d1 in dieRolls
			                from d2 in dieRolls
			                select d1 + d2;

			var irregular = new Dictionary<int, Dictionary<int, double>>
				{
					{30, new Dictionary<int, double> {{10, 1.0000}}},
					{02, new Dictionary<int, double> {{00, 0.0625},     {10, 0.0625},     {02, 0.8750}}},
					{17, new Dictionary<int, double> {{00, 0.0625},     {10, 0.0625},     {17, 0.8750}}},
					{33, new Dictionary<int, double> {{00, 0.0625},     {10, 0.0625},     {33, 0.8750}}},
					{07, new Dictionary<int, double> {{00, 0.0625},     {10, 0.0625},     {11, 0.0625}, {24, 0.0625}, {39, 0.0625}, {05, 0.0625}, {15, 0.1250}, {12, 0.0625}, {04, 0.0625},    {07, 0.3750}}},
					{22, new Dictionary<int, double> {{00, 0.0625},     {10, 0.0625},     {11, 0.0625}, {24, 0.0625}, {39, 0.0625}, {05, 0.0625}, {25, 0.1250}, {12, 0.0625}, {19, 0.0625},    {22, 0.3750}}},
					{36, new Dictionary<int, double> {{00, 0.06640625}, {10, 0.06640625}, {11, 0.0625}, {24, 0.0625}, {39, 0.0625},               {05, 0.1875}, {28, 0.0625}, {33, 0.0546875}, {36, 0.3750}}},
				};

			var chances = Enumerable.Range(0, boardSquares).ToDictionary(i => i, i => 1.0);

			for (var i = 0; i < 10; i++)
			{
				var chancesOrig = new Dictionary<int, double>(chances);

				for (var start = 0; start < boardSquares; start++)
				{
					foreach (var roll in dieRolls2)
					{
						var end = (start + roll) % boardSquares;

						if (irregular.ContainsKey(end))
							foreach (var combo in irregular[end])
								chances[combo.Key] += combo.Value * chancesOrig[start];
						else
							chances[end] += chancesOrig[start];
					}
				}
			}

			var totalRolls = chances.Sum(kvp => kvp.Value);
			var top3 = chances.OrderByDescending(d => d.Value).Take(3).ToList();
			return string.Join("", top3.Select(kvp => kvp.Key.ToString("00"))) + " - " + string.Join(",", top3.Select(kvp => 100 * kvp.Value / totalRolls));
		}
	}
}
