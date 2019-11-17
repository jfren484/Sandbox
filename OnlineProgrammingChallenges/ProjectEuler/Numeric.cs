using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ProjectEuler
{
	public static class Numeric
	{
		public static int NthTriangle(int n)
		{
			return n * (n + 1) / 2;
		}

		public static int NthSquare(int n)
		{
			return n * n;
		}

		public static int NthPentagonal(int n)
		{
			return n * (3 * n - 1) / 2;
		}

		public static int NthHexagonal(int n)
		{
			return n * (2 * n - 1);
		}

		public static int NthHeptagonal(int n)
		{
			return n * (5 * n - 3) / 2;
		}

		public static int NthOctagonal(int n)
		{
			return n * (3 * n - 2);
		}

		public static bool IsTriangle(int x)
		{
			return IsPolygonal(0.5, 0.5, -x);
		}

		public static bool IsSquare(int x)
		{
			return IsPolygonal(1, 0, -x);
		}

		public static bool IsPentagonal(int x)
		{
			return IsPolygonal(1.5, -0.5, -x);
		}

		public static bool IsHexagonal(int x)
		{
			return IsPolygonal(2, -1, -x);
		}

		public static bool IsHeptagonal(int x)
		{
			return IsPolygonal(2.5, -1.5, -x);
		}

		public static bool IsOctagonal(int x)
		{
			return IsPolygonal(3, -2, -x);
		}

		private static bool IsPolygonal(double a, double b, double c)
		{
			var quad = Quadratic.Roots(a, b, c);
			return quad.Max == (int)quad.Max;
		}
	}
}
