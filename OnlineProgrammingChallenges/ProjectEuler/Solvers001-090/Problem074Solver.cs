using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;

namespace ProjectEuler.Solvers
{
	[Description("Determine the number of factorial chains that contain exactly sixty non-repeating terms.")]
	public class Problem074Solver : IProblemSolver
	{
		public string Execute()
		{
			var factorials = Enumerable
				.Range(0, 10)
				.ToDictionary(i => i.ToString()[0],
				              i => (int)i.Factorial());

			const int max = 1000000;

			var dict = new Dictionary<string, int>();

			for (var i = 0; i < max; i++)
			{
				var number = i.ToString();
				if (dict.ContainsKey(number)) continue;

				var numbers = new List<string> { number };

				var count = dict.Count;
				while (dict.Count == count)
				{
					number = number.ToCharArray().Sum(c => factorials[c]).ToString();

					if (dict.ContainsKey(number))
						for (var index = 0; index < numbers.Count; index++)
							dict.Add(numbers[index], numbers.Count - index + dict[number]);
					else
					{
						var repeatIndex = numbers.IndexOf(number);
						if (repeatIndex >= 0)
							for (var index = 0; index < numbers.Count; index++)
								dict.Add(numbers[index], numbers.Count - (index < repeatIndex ? index : repeatIndex));
						else
							numbers.Add(number);
					}
				}
			}

			return dict.Count(kvp => kvp.Value == 60).ToString();
		}
	}
}
