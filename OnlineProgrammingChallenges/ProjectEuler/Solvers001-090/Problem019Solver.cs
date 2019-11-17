using System;
using System.ComponentModel;
using System.Linq;

namespace ProjectEuler.Solvers
{
	[Description("How many Sundays fell on the first of the month during the twentieth century?")]
	public class Problem019Solver : IProblemSolver
	{
		public string Execute()
		{
			return (from y in Enumerable.Range(1901, 100)
			        from m in Enumerable.Range(1, 12)
					where (new DateTime(y, m, 1)).DayOfWeek == DayOfWeek.Sunday
			        select 1).Count().ToString();
		}
	}
}
