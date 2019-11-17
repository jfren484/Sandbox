using System.ComponentModel;
using System.Numerics;

namespace ProjectEuler.Solvers
{
	[Description("What is the sum of the digits of the number 2^1000?")]
	public class Problem016Solver : IProblemSolver
	{
		public string Execute()
		{
			//const int pow = 1000;
			//var digits = new List<int>(310) { 2 };

			//for (var p = 1; p < pow; p++)
			//{
			//    var carry = 0;

			//    for (var digit = digits.Count - 1; digit >= 0; digit--)
			//    {
			//        digits[digit] = digits[digit] * 2 + carry;
			//        carry = digits[digit] / 10;
			//        digits[digit] = digits[digit] % 10;
			//    }

			//    if (carry > 0)
			//        digits.Insert(0, carry);
			//}

			//return digits.Sum().ToString();

			return BigInteger.Pow(2, 1000).SumOfDigits().ToString();
		}
	}
}
