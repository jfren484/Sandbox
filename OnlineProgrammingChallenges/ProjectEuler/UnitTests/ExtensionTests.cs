using System;
using System.Drawing;
using System.Linq;
using NUnit.Framework;
using ProjectEuler;
using System.Collections.Generic;

namespace UnitTests
{
	[TestFixture]
	public class UnitTests
	{
		[Test]
		public void TestCombinations()
		{
			// Arrange
			var values = new[] {1, 2, 3, 2, 1};

			const string expected1 = "1,2,3";
			const string expected2 = "11,12,13,22,23";
			const string expected3 = "112,113,122,123,223";

			// Act
			var combos0 = values.Combinations(0);
			var combos1 = values.Combinations(1)
				.OrderBy(l => string.Join("", l))
				.ToList();
			var combos2 = values.Combinations(2)
				.OrderBy(l => string.Join("", l))
				.ToList();
			var combos3 = values.Combinations(3)
				.OrderBy(l => string.Join("", l))
				.ToList();

			// Assert
			Assert.IsFalse(combos0.Any());
			Assert.AreEqual(expected1, String.Join(",", combos1.Select(c => string.Join("", c))));
			Assert.AreEqual(expected2, String.Join(",", combos2.Select(c => string.Join("", c))));
			Assert.AreEqual(expected3, String.Join(",", combos3.Select(c => string.Join("", c))));
		}

		[Test]
		public void TestIsPermutationOf()
		{
			// Arrange
			const string str1 = "BARE";
			const string str2 = "BEAR";
			const string str3 = "BAR";

			// Act
			var result1 = str1.IsPermutationOf(str2);
			var result2 = str1.IsPermutationOf(str3);

			// Assert
			Assert.IsTrue(result1);
			Assert.IsFalse(result2);
		}

		[Test]
		public void TestFromRomanNumeralToInt()
		{
			// Arrange
			var numeralStrings = new[]
				{
					"MMMMDCLXXII",
					"MMDCCCLXXXIII",
					"MMMDLXVIIII",
					"MMMMDXCV",
					"DCCCLXXII",
					"MMCCCVI",
					"MMMCDLXXXVII",
					"MMMMCCXXI",
					"MMMCCXX",
					"MMMMDCCCLXXIII"
				};

			var expectedResults = new[]
				{
					4672,
					2883,
					3569,
					4595,
					872,
					2306,
					3487,
					4221,
					3220,
					4873
				};

			// Act
			var actualResults = numeralStrings.Select(s => s.FromRomanNumeralToInt()).ToArray();

			// Assert
			for (var i = 0; i < actualResults.Length; i++)
				Assert.AreEqual(expectedResults[i], actualResults[i]);
		}

		[Test]
		public void TestFromIntToRomanNumeral()
		{
			// Arrange
			var intValues = new[]
				{
					4672,
					2883,
					3569,
					4595,
					872,
					2306,
					3487,
					4221,
					3220,
					4873
				};

			var expectedResults = new[]
				{
					"MMMMDCLXXII",
					"MMDCCCLXXXIII",
					"MMMDLXIX",
					"MMMMDXCV",
					"DCCCLXXII",
					"MMCCCVI",
					"MMMCDLXXXVII",
					"MMMMCCXXI",
					"MMMCCXX",
					"MMMMDCCCLXXIII"
				};

			// Act
			var actualResults = intValues.Select(s => s.FromIntToRomanNumeral()).ToArray();

			// Assert
			for (var i = 0; i < actualResults.Length; i++)
				Assert.AreEqual(expectedResults[i], actualResults[i]);
		}

		[Test]
		public void TestGreatestCommonDenominatorWith()
		{
			// Arrange
			var values = new[]
				{
					new long[] { -3, 2 },
					new long[] { 6, 10 },
					new long[] { 12, 30 },
					new long[] { 24, 36 },
					new long[] { 120, 108 }
				};
			var expected = new[] { 1, 2, 6, 12, 12 };

			// Act
			var actual = values.Select(a => a[0].GreatestCommonDenominatorWith(a[1])).ToArray();

			// Assert
			Assert.AreEqual(expected.Length, actual.Length);
			for (var i = 0; i < actual.Length; i++)
				Assert.AreEqual(expected[i], actual[i]);
		}

		[Test]
		public void TestFilledAreaContainsPoint()
		{
			// Arrange
			var polygonA = new[]
				{
					new Point(-340, 495),
					new Point(-153, -910),
					new Point(835, -947)
				};
			var polygonB = new[]
				{
					new Point(-175, 41),
					new Point(-421, -714),
					new Point(574, -645)
				};

			// Act
			var aContainsPoint = polygonA.FilledAreaContains(new Point(-340, 495));
			var aContainsOrigin = polygonA.FilledAreaContains(Point.Empty);
			var bContainsOrigin = polygonB.FilledAreaContains(Point.Empty);

			// Assert
			Assert.True(aContainsPoint, "polygonA contains (-340, 495)");
			Assert.True(aContainsOrigin, "polygonA contains (0, 0)");
			Assert.False(bContainsOrigin, "polygonB contains (0, 0)");
		}
	}
}
