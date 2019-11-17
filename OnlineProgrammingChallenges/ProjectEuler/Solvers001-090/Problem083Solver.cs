using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Linq;
using ProjectEuler.InputFiles;

namespace ProjectEuler.Solvers
{
	[Description("Find the minimal path sum from the top left to the bottom right by moving left, right, up, and down.")]
	public class Problem083Solver : IProblemSolver
	{
		public string Execute()
		{
			var offsets = new[]
				{
					new Point(1, 0),
					new Point(-1, 0),
					new Point(0, -1),
					new Point(0, 1)
				};

			var grid = Problem081To083Input.Grid;
				//new[,]
				//    {
				//        {131, 673, 234, 103,  18},
				//        {201,  96, 342, 965, 150},
				//        {630, 803, 746, 422, 111},
				//        {537, 699, 497, 121, 956},
				//        {805, 732, 524,  37, 331}
				//    };

			var allNodes = new Dictionary<Point, Node>();
			for (var y = 0; y < grid.GetLength(0); y++)
				for (var x = 0; x < grid.GetLength(1); x++)
				{
					var node = new Node(x, y, grid[y, x]);
					allNodes.Add(node.Location, node);
				}

			allNodes[Point.Empty].TotalDistance = grid[0, 0];
			var dest = allNodes.Last().Value;

			var unvisitedNodes = new List<Node>(allNodes.Values);
			while (unvisitedNodes.Count > 0 && unvisitedNodes.Contains(dest))
			{
				var current = unvisitedNodes.OrderBy(n => n.TotalDistance).First();
				unvisitedNodes.Remove(current);

				foreach (var offset in offsets)
				{
					var p = current.Location;
					p.Offset(offset);

					if (!allNodes.ContainsKey(p)) continue;

					var neighbor = allNodes[p];
					var dist = current.TotalDistance + neighbor.NodeDistance;
					if (dist < neighbor.TotalDistance)
						neighbor.TotalDistance = dist;
				}
			}

			return dest.TotalDistance.ToString();
		}

		private class Node : IComparable
		{
			public Point Location { get; private set; }
			public int NodeDistance { get; private set; }
			public int TotalDistance { get; set; }

			public Node(int x, int y, int distance)
			{
				Location = new Point(x, y);
				NodeDistance = distance;
				TotalDistance = int.MaxValue;
			}

			public override bool Equals(object obj)
			{
				var node = obj as Node;
				return node != null && node.Location == Location;
			}

			public override int GetHashCode()
			{
				return Location.GetHashCode();
			}

			public int CompareTo(object obj)
			{
				var node = obj as Node;
				if (node == null) throw new ArgumentException();

				return TotalDistance.CompareTo(node.TotalDistance);
			}
		}
	}
}
