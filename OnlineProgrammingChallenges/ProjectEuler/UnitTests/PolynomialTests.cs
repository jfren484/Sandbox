using System.Linq;
using NUnit.Framework;
using ProjectEuler;

namespace UnitTests
{
	[TestFixture]
	public class PolynomialTests
	{
		[Test]
		public void TestToString()
		{
			// Arrange
			var values = new[]
				{
					new Fraction[] {1, -2, 0, 3, 4},
					new Fraction[] {-1, 2, -3, 0, -4},
					new Fraction[] {1, 0.5, 1.4},
					new Fraction[] {1, 1, 1},
					new Fraction[] {-1, -1, -1}
				};

			var expected = new[]
				{
					"4x^4 + 3x^3 - 2x + 1",
					"-4x^4 - 3x^2 + 2x - 1",
					"7/5x^2 + 1/2x + 1",
					"x^2 + x + 1",
					"-x^2 - x - 1"
				};

			// Act
			var actual = values.Select(v => new Polynomial(v).ToString()).ToArray();

			// Assert
			Assert.AreEqual(expected.Length, actual.Length);
			for (var i = 0; i < expected.Length; i++)
				Assert.AreEqual(expected[i], actual[i]);
		}

		[Test]
		public void TestDegree()
		{
			// Arrange
			var values = new[]
				{
					new Fraction[] {1, -2, 0, 3, 4},
					new Fraction[] {-1, -3, 0, -4},
					new Fraction[] {1, 0.5, 1.40},
					new Fraction[] {-1, -1},
					new Fraction[] {3}
				};

			var expected = new[]
				{
					4,
					3,
					2,
					1,
					0
				};

			// Act
			var actual = values.Select(v => new Polynomial(v).Degree()).ToArray();

			// Assert
			Assert.AreEqual(expected.Length, actual.Length);
			for (var i = 0; i < expected.Length; i++)
				Assert.AreEqual(expected[i], actual[i]);
		}

		[Test]
		public void TestSolveFor()
		{
			// Arrange
			var poly = new Polynomial(1, -2, 0, 3, 4);
			var values = new[] {0, 1, 5};

			var expected = new[] { (Fraction)1, (Fraction)6, (Fraction)2866 };

			// Act
			var actual = values.Select(x => poly.SolveFor(x)).ToArray();

			// Assert
			Assert.AreEqual(expected.Length, actual.Length);
			for (var i = 0; i < expected.Length; i++)
				Assert.AreEqual(expected[i], actual[i]);
		}

		[Test]
		public void TestInterpolate()
		{
			// Arrange
			var values = new[]
				{
					new Fraction[] {1},
					new Fraction[] {1, 8},
					new Fraction[] {1, 8, 27},
					new Fraction[] {1, 8, 27, 64},
					new Fraction[] {1, 683, 44287, 838861, 8138021, 51828151, 247165843, 954437177, 3138105961, 9090909091}
				};

			var expected = new[]
				{
					"1",
					"7x - 6",
					"6x^2 - 11x + 6",
					"x^3",
					"54x^9 - 1319x^8 + 18149x^7 - 157772x^6 + 902054x^5 - 3416929x^4 + 8409499x^3 - 12753575x^2 + 10628639x - 3628799"
				};

			// Act
			var actual = values.Select(terms => Polynomial.Interpolate(terms).ToString()).ToArray();

			// Assert
			Assert.AreEqual(expected.Length, actual.Length);
			for (var i = 0; i < expected.Length; i++)
				Assert.AreEqual(expected[i], actual[i]);
		}

		[Test]
		public void TestAdd()
		{
			// Arrange
			var poly1 = new Polynomial(1, -2, 0, 0, 4);
			var poly2 = new Polynomial(2, -5, 1, 0, 0, 6);

			const string expected = "6x^5 + 4x^4 + x^2 - 7x + 3";

			// Act
			var actual = (poly1 + poly2).ToString();

			// Assert
			Assert.AreEqual(expected, actual);
		}

		[Test]
		public void TestMultiplyByConstant()
		{
			// Arrange
			var poly = new Polynomial(1, -2, 0, 3, 4);
			const double mulBy = 1.5;

			const string expected = "6x^4 + 9/2x^3 - 3x + 3/2";

			// Act
			var actual = (poly * mulBy).ToString();

			// Assert
			Assert.AreEqual(expected, actual);
		}

		[Test]
		public void TestMultiplyByPolynomial()
		{
			// Arrange
			var poly1 = new Polynomial(1, -2, 0, 3, 4);
			var poly2 = new Polynomial(2, -5);

			const string expected = "-20x^5 - 7x^4 + 6x^3 + 10x^2 - 9x + 2";

			// Act
			var actual = (poly1 * poly2).ToString();

			// Assert
			Assert.AreEqual(expected, actual);
		}

		[Test]
		public void TestMultiplyByPolynomial2()
		{
			// Arrange
			var poly1 = new Polynomial(2, -1);
			var poly2 = new Polynomial(1.5, -0.5);

			const string expected = "1/2x^2 - 5/2x + 3";

			// Act
			var actual = (poly1 * poly2).ToString();

			// Assert
			Assert.AreEqual(expected, actual);
		}

		[Test]
		public void TestDivideByConstant()
		{
			// Arrange
			var poly = new Polynomial(1, -2, 0, 3, 4);
			const int divBy = 2;

			const string expected = "2x^4 + 3/2x^3 - x + 1/2";

			// Act
			var actual = (poly / divBy).ToString();

			// Assert
			Assert.AreEqual(expected, actual);
		}
	}
}
