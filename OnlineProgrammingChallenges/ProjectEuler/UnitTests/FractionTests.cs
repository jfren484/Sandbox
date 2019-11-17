using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using NUnit.Framework;
using ProjectEuler;

namespace UnitTests
{
	[TestFixture]
	public class FractionTests
	{
		[Test]
		public void TestToString()
		{
			// Arrange
			var fractions = new[]
				{
					new Fraction(1),
					(Fraction)1.4,
					new Fraction(1, 2),
					new Fraction(1, 3),
					new Fraction(4, 6)
				};

			var expected = new[]
				{
					"1",
					"7/5",
					"1/2",
					"1/3",
					"2/3"
				};

			// Act
			var actual = fractions.Select(f => f.ToString()).ToArray();

			// Assert
			Assert.AreEqual(expected.Length, actual.Length);
			for (var i = 0; i < expected.Length; i++)
				Assert.AreEqual(expected[i], actual[i]);
		}

		[Test]
		public void TestAddition()
		{
			// Arrange
			var fractions = new[]
				{
					(Fraction)0,
					(Fraction)1,
					new Fraction(1, 3),
					new Fraction(1, 6),
					new Fraction(1, 9),
					new Fraction(4, 6)
				};
			var toAdd1 = new Fraction(1, 6);
			var toAdd2 = 1;

			var expected1 = new[]
				{
					new Fraction(1, 6),
					new Fraction(7, 6),
					new Fraction(1, 2),
					new Fraction(1, 3),
					new Fraction(5, 18),
					new Fraction(5, 6)
				};
			var expected2 = new[]
				{
					(Fraction)1,
					(Fraction)2,
					new Fraction(4, 3),
					new Fraction(7, 6),
					new Fraction(10, 9),
					new Fraction(5, 3)
				};

			// Act
			var actual1 = fractions.Select(f => f + toAdd1).ToArray();
			var actual2 = fractions.Select(f => f + toAdd2).ToArray();

			// Assert
			Assert.AreEqual(expected1.Length, actual1.Length);
			for (var i = 0; i < expected1.Length; i++)
				Assert.AreEqual(expected1[i], actual1[i]);

			Assert.AreEqual(expected2.Length, actual2.Length);
			for (var i = 0; i < expected2.Length; i++)
				Assert.AreEqual(expected2[i], actual2[i]);
		}

		[Test]
		public void TestAdditionBigNumbers()
		{
			// Arrange
			var fractions = new[]
				{
					new Fraction(-663941, 90720),
					new Fraction(180835861, 5040),
					new Fraction(-19208999093, 2520),
					new Fraction(611183219407, 2160),
					new Fraction(-509025075529, 144),
					new Fraction(14171423156081, 720),
					new Fraction(-59972072979677, 1080),
					new Fraction(416032484394061, 5040),
					new Fraction(-620532210834101, 10080),
					new Fraction(41118181818593, 2268)
				};

			var expected = (Fraction)8409499;

			// Act
			var actual = fractions.Aggregate((Fraction)0, (agg, f) => agg + f);

			// Assert
			Assert.AreEqual(expected, actual);
		}

		[Test]
		public void TestSubtraction()
		{
			// Arrange
			var fractions = new[]
				{
					(Fraction)0,
					(Fraction)1,
					new Fraction(1, 3),
					new Fraction(1, 6),
					new Fraction(1, 9),
					new Fraction(4, 6)
				};
			var toSub1 = new Fraction(1, 6);
			var toSub2 = 1;

			var expected1 = new[]
				{
					new Fraction(-1, 6),
					new Fraction(5, 6),
					new Fraction(1, 6),
					new Fraction(0),
					new Fraction(-1, 18),
					new Fraction(1, 2)
				};
			var expected2 = new[]
				{
					(Fraction)(-1),
					(Fraction)0,
					new Fraction(-2, 3),
					new Fraction(-5, 6),
					new Fraction(-8, 9),
					new Fraction(-1, 3)
				};

			// Act
			var actual1 = fractions.Select(f => f - toSub1).ToArray();
			var actual2 = fractions.Select(f => f - toSub2).ToArray();

			// Assert
			Assert.AreEqual(expected1.Length, actual1.Length);
			for (var i = 0; i < expected1.Length; i++)
				Assert.AreEqual(expected1[i], actual1[i]);

			Assert.AreEqual(expected2.Length, actual2.Length);
			for (var i = 0; i < expected2.Length; i++)
				Assert.AreEqual(expected2[i], actual2[i]);
		}

		[Test]
		public void TestMultiplication()
		{
			// Arrange
			var fractions = new[]
				{
					new Fraction(1),
					new Fraction(1, 3),
					new Fraction(1, 6),
					new Fraction(1, 9),
					new Fraction(4, 6),
					new Fraction(3, 2)
				};
			var toMul1 = new Fraction(1, 6);
			var toMul2 = 2;
			var toMul3 = -1;

			var expected1 = new[]
				{
					new Fraction(1, 6),
					new Fraction(1, 18),
					new Fraction(1, 36),
					new Fraction(1, 54),
					new Fraction(1, 9),
					new Fraction(1, 4)
				};
			var expected2 = new[]
				{
					new Fraction(2),
					new Fraction(2, 3),
					new Fraction(1, 3),
					new Fraction(2, 9),
					new Fraction(4, 3),
					new Fraction(3)
				};
			var expected3 = new[]
				{
					new Fraction(-1),
					new Fraction(-1, 3),
					new Fraction(-1, 6),
					new Fraction(-1, 9),
					new Fraction(-2, 3),
					new Fraction(-3, 2)
				};

			// Act
			var actual1 = fractions.Select(f => f * toMul1).ToArray();
			var actual2 = fractions.Select(f => f * toMul2).ToArray();
			var actual3 = fractions.Select(f => f * toMul3).ToArray();

			// Assert
			Assert.AreEqual(expected1.Length, actual1.Length);
			for (var i = 0; i < expected1.Length; i++)
				Assert.AreEqual(expected1[i], actual1[i]);

			Assert.AreEqual(expected2.Length, actual2.Length);
			for (var i = 0; i < expected2.Length; i++)
				Assert.AreEqual(expected2[i], actual2[i]);

			Assert.AreEqual(expected3.Length, actual3.Length);
			for (var i = 0; i < expected3.Length; i++)
				Assert.AreEqual(expected3[i], actual3[i]);
		}

		[Test]
		public void TestDivision()
		{
			// Arrange
			var fractions = new[]
				{
					new Fraction(1),
					new Fraction(1, 3),
					new Fraction(1, 6),
					new Fraction(1, 9),
					new Fraction(4, 6)
				};
			var toDiv1 = new Fraction(1, 6);
			var toDiv2 = 2;
			var toDiv3 = -1;

			var expected1 = new[]
				{
					new Fraction(6),
					new Fraction(2),
					new Fraction(1),
					new Fraction(2, 3),
					new Fraction(4)
				};
			var expected2 = new[]
				{
					new Fraction(1, 2),
					new Fraction(1, 6),
					new Fraction(1, 12),
					new Fraction(1, 18),
					new Fraction(1, 3)
				};
			var expected3 = new[]
				{
					new Fraction(-1),
					new Fraction(-1, 3),
					new Fraction(-1, 6),
					new Fraction(-1, 9),
					new Fraction(-2, 3)
				};

			// Act
			var actual1 = fractions.Select(f => f / toDiv1).ToArray();
			var actual2 = fractions.Select(f => f / toDiv2).ToArray();
			var actual3 = fractions.Select(f => f / toDiv3).ToArray();

			// Assert
			Assert.AreEqual(expected1.Length, actual1.Length);
			for (var i = 0; i < expected1.Length; i++)
				Assert.AreEqual(expected1[i], actual1[i]);

			Assert.AreEqual(expected2.Length, actual2.Length);
			for (var i = 0; i < expected2.Length; i++)
				Assert.AreEqual(expected2[i], actual2[i]);

			Assert.AreEqual(expected3.Length, actual3.Length);
			for (var i = 0; i < expected3.Length; i++)
				Assert.AreEqual(expected3[i], actual3[i]);
		}
	}
}
