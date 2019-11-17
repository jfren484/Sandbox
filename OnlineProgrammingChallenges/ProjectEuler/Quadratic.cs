using System;

namespace ProjectEuler
{
	public static class Quadratic
	{
		public static Pair Roots(double a, double b, double c)
		{
			var bottom = 2 * a;
			var left = -b / bottom;
			var right = Math.Sqrt(b * b - 4 * a * c) / bottom;

			return new Pair
				{
					A = left - right,
					B = left + right
				};
		}

		public class Pair
		{
			public double A { get; set; }
			public double B { get; set; }

			public double Max { get { return A > B ? A : B; }}
		}
	}
}
