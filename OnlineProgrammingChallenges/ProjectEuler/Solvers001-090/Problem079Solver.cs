using System.ComponentModel;
using System.Linq;
using System.Text;
using ProjectEuler.InputFiles;

namespace ProjectEuler.Solvers
{
	[Description("By analysing a user's login attempts, can you determine the secret numeric passcode?")]
	public class Problem079Solver : IProblemSolver
	{
		public string Execute()
		{
			var logins = Problem079Input.Logins.Distinct().Select(s => s.ToCharArray().ToList()).ToList();

			var passcode = new StringBuilder();

			while (logins.Any(l => l.Any(c => !passcode.ToString().Contains(c))))
				passcode.Append(logins
				                	.Where(l => l.Any())
				                	.Select(l => l.FirstOrDefault(c => !passcode.ToString().Contains(c)))
				                	.Where(c => c > 0)
				                	.GroupBy(c => c)
				                	.OrderByDescending(g => g.Count())
				                	.First()
				                	.Key);

			return passcode.ToString();
		}
	}
}
