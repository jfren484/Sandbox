using System;
using System.Linq;
using System.Text;

namespace ProjectEuler
{
	public class Polynomial
	{
		private readonly Fraction[] _coefficients = Enumerable.Repeat((Fraction)0, 20).ToArray();

		public Fraction this[int index]
		{
			get { return _coefficients[index]; }
			set { _coefficients[index] = value; }
		}

		public Polynomial() {}
		public Polynomial(params Fraction[] coefficients) : this()
		{
			for (var i = 0; i < coefficients.Length; i++)
				_coefficients[i] = coefficients[i];
		}

		public int Degree()
		{
			return _coefficients.ToList().FindLastIndex(f => f != 0);
		}

		public Fraction SolveFor(double x)
		{
			return _coefficients
				.Select((c, i) => new {c, i})
				.Where(term => term.c != 0)
				.Select(term => new {term.c, v = Math.Pow(x, term.i)})
				.Aggregate((Fraction)0, (agg, term) => agg + term.c * term.v);
		}

		#region Overrides

		public override string ToString()
		{
			return string.Join(" + ", _coefficients
										.Take(Degree() + 1)
			                          	.Select(ToStringPlusVariable)
			                          	.Reverse()
			                          	.Where(s => !string.IsNullOrWhiteSpace(s)))
				.Replace("+ -", "- ");
		}

		private string ToStringPlusVariable(Fraction f, int powerOfX)
		{
			if (f == 0) return string.Empty;

			var sb = new StringBuilder();
			sb.Append(f);

			if (Math.Abs((double)f) == 1 && powerOfX > 0)
				sb.Remove(sb.Length - 1, 1);

			if (powerOfX > 0)
			{
				sb.Append("x");
				if (powerOfX > 1)
					sb.Append("^").Append(powerOfX);
			}

			return sb.ToString();
		}

		#endregion

		#region Static Methods

		public static Polynomial Interpolate(Fraction[] values)
		{
			var poly = new Polynomial();

			for (var d = 1; d <= values.Length; d++)
			{
				var termPoly = new Polynomial(1);
				var denominator = 1L;
				for (var k = 1; k <= values.Length; k++)
				{
					if (k == d) continue;

					var num = new Polynomial(-k, 1);
					var den = d - k;

					termPoly *= num;
					denominator *= den;
				}

				poly += termPoly * values[d - 1] / denominator;
			}

			return poly;
		}

		#endregion

		#region Operator overloads

		public static Polynomial operator +(Polynomial left, Polynomial right)
		{
			var newPoly = new Polynomial();

			for (var i = Math.Max(left.Degree(), right.Degree()); i >= 0; i--)
				newPoly[i] = left[i] + right[i];

			return newPoly;
		}

		public static Polynomial operator *(Polynomial left, Polynomial right)
		{
			var newPoly = new Polynomial();

			for (var i = right.Degree(); i >= 0; i--)
				for (var j = left.Degree(); j >= 0; j--)
					newPoly[i + j] += left[j] * right[i];

			return newPoly;
		}

		public static Polynomial operator *(Polynomial left, Fraction right)
		{
			return left * new Polynomial(right);
		}
		public static Polynomial operator *(Fraction left, Polynomial right)
		{
			return new Polynomial(left) * right;
		}

		public static Polynomial operator /(Polynomial left, long right)
		{
			var newPoly = new Polynomial();
			for (var i = left.Degree(); i >= 0; i--)
				newPoly[i] = left[i] / right;

			return newPoly;
		}

		#endregion
	}
}
