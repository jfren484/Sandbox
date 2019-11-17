using System.ComponentModel;
using System.Linq;
using ProjectEuler.InputFiles;

namespace ProjectEuler.Solvers
{
	[Description("Develop a method to express Roman numerals in minimal form.")]
	public class Problem089Solver : IProblemSolver
	{
		public string Execute()
		{
			return Problem089Input.Numerals
				.Select(s => s.Length - s.FromRomanNumeralToInt().FromIntToRomanNumeral().Length)
				.Sum()
				.ToString();
		}
	}
}
