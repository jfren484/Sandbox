using System.ComponentModel;
using System.Drawing;
using System.Linq;

namespace ProjectEuler.Solvers
{
	[Description("Find the number of right angle triangles in the quadrant.")]
	public class Problem091Solver : IProblemSolver
	{
		public string Execute()
		{
			const int max = 50;
			var range = Enumerable.Range(0, max + 1);

			var allPoints = (from x in range
							 from y in range
							 where x > 0 || y > 0
							 select new Point(x, y)).ToList();

			var o = new Point(0, 0);
			var triangles = (from p in allPoints
							 from q in allPoints
							 where q != p
								   && q.X >= p.X
								   && q.Y <= p.Y
								   && (q.X > 0 || p.X > 0)
								   && (q.Y > 0 || p.Y > 0)
							 let op = p.X * p.X + p.Y * p.Y
							 let oq = q.X * q.X + q.Y * q.Y
							 let pq = (p.X - q.X) * (p.X - q.X) + (p.Y - q.Y) * (p.Y - q.Y)
							 let orderedDistances = new[] {op, oq, pq}.OrderBy(i => i).ToArray()
							 select new
								{
									Points = new[] {o, p, q},
									Distances = orderedDistances,
									IsRightTriangle = orderedDistances[2] == orderedDistances[1] + orderedDistances[0]
								}).ToList();

			return triangles.Count(tri => tri.IsRightTriangle).ToString();
		}
	}
}
