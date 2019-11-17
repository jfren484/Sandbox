using System;
using System.Collections.Generic;
using System.Numerics;

namespace ProjectEuler
{
	public class BigDouble : IComparable
	{
		private BigInteger _bigInteger;
		private int _decimalPlace;

		private const string Chars = "0123456789";
		public override string ToString()
		{
			var str = _bigInteger.ToString().Insert(_decimalPlace, ".");
			if (str.EndsWith("."))
				str += "0";
			return str;
		}

		public BigDouble Square()
		{
			return null;
		}

		#region IComparable

		public int CompareTo(object obj)
		{
			if (obj == null)
				return 1;

			if (!(obj is BigDouble))
				throw new ArgumentException("Passed argument must be BigDouble", "obj");

			var bd1 = this;
			var bd2 = (BigDouble)obj;

			var bi1 = bd1._bigInteger;
			var bi2 = bd2._bigInteger;

			var diffPow = (bi1.ToString().Length - bd1._decimalPlace) - (bi2.ToString().Length - bd2._decimalPlace);

			var compare = bd1._decimalPlace.CompareTo(bd2._decimalPlace);
			if (compare == 0)
				compare = bd1._bigInteger.CompareTo(bd2._bigInteger);
			else
			{
				
			}

			return compare;
		}

		#endregion

		#region Static methods

		public static BigDouble SquareRoot(uint n, byte digits)
		{
			var bigInt = BigInteger.Pow(10, (digits + 1) * 2) * n;
			bigInt = bigInt.SquareRoot();

			var bd = new BigDouble
				{
					_bigInteger = bigInt,
					_decimalPlace = digits + n.ToString().Length
				};

			return bd;
		}

		public static implicit operator BigDouble(long l)
		{
			return new BigDouble
				{
					_bigInteger = l,
					_decimalPlace = l.ToString().Length
				};
		}

		public static bool operator <(BigDouble c1, BigDouble c2)
		{
			return c1.CompareTo(c2) < 0;
		}

		public static bool operator >(BigDouble c1, BigDouble c2)
		{
			return c1.CompareTo(c2) > 0;
		}

		#endregion
	}
}
