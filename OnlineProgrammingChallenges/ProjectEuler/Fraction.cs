using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ProjectEuler
{
	public class Fraction
	{
		public long Numerator { get; private set; }
		public long Denominator { get; private set; }

		public Fraction(long numerator = 1, long denominator = 1)
		{
			if (denominator == 0 && numerator != 0) throw new DivideByZeroException();
			if (denominator < 0)
			{
				numerator = -numerator;
				denominator = -denominator;
			}

			if (denominator != 1)
			{
				if (numerator == 0)
					denominator = 1;
				else
				{
					var gcd = numerator.GreatestCommonDenominatorWith(denominator);
					if (gcd > 1)
					{
						numerator /= gcd;
						denominator /= gcd;
					}
				}
			}

			Numerator = numerator;
			Denominator = denominator;
		}

		public override bool Equals(object obj)
		{
			return obj is Fraction && ((Fraction)obj == this);
		}

		public override int GetHashCode()
		{
			return ((double)this).GetHashCode();
		}

		public override string ToString()
		{
			return Numerator + (Denominator <= 1 ? "" : "/" + Denominator);
		}

		#region Operator overloads

		public static explicit operator double(Fraction f)
		{
			return (double)f.Numerator / f.Denominator;
		}

		public static implicit operator Fraction(double d)
		{
			var denom = 1.0;
			var str = d.ToString();
			var dot = str.IndexOf('.');

			if (dot >= 0)
				denom = Math.Pow(10, str.Length - dot - 1);

			return new Fraction((long)(d * denom), (long)denom);
		}

		public static bool operator ==(Fraction left, Fraction right)
		{
			return left.Numerator == right.Numerator && left.Denominator == right.Denominator;
		}

		public static bool operator !=(Fraction left, Fraction right)
		{
			return left.Numerator != right.Numerator || left.Denominator != right.Denominator;
		}

		public static Fraction operator +(Fraction left, Fraction right)
		{
			if (left.Denominator == right.Denominator)
				return new Fraction(left.Numerator + right.Numerator, left.Denominator);

			var gcd = left.Denominator.GreatestCommonDenominatorWith(right.Denominator);
			var lcm = left.Denominator * right.Denominator / gcd;

			return new Fraction(right.Denominator / gcd * left.Numerator + left.Denominator / gcd * right.Numerator, lcm);
		}

		public static Fraction operator -(Fraction left, Fraction right)
		{
			return left + -1 * right;
		}

		public static Fraction operator *(Fraction left, Fraction right)
		{
			return new Fraction(left.Numerator * right.Numerator, left.Denominator * right.Denominator);
		}

		public static Fraction operator /(Fraction left, Fraction right)
		{
			return new Fraction(left.Numerator * right.Denominator, left.Denominator * right.Numerator);
		}

		#endregion
	}
}
