using System.Linq;
using NUnit.Framework;
using ProjectEuler;

namespace UnitTests
{
	[TestFixture]
	public class GridTests
	{
		private Grid _easyGrid, _mediumGrid, _hardGrid, _reallyHardGrid;

		[SetUp]
		public void Initialize()
		{
			_easyGrid = new Grid("easy", new[]
				{
					new[] {0, 0, 3, 0, 2, 0, 6, 0, 0},
					new[] {9, 0, 0, 3, 0, 5, 0, 0, 1},
					new[] {0, 0, 1, 8, 0, 6, 4, 0, 0},
					new[] {0, 0, 8, 1, 0, 2, 9, 0, 0},
					new[] {7, 0, 0, 0, 0, 0, 0, 0, 8},
					new[] {0, 0, 6, 7, 0, 8, 2, 0, 0},
					new[] {0, 0, 2, 6, 0, 9, 5, 0, 0},
					new[] {8, 0, 0, 2, 0, 3, 0, 0, 9},
					new[] {0, 0, 5, 0, 1, 0, 3, 0, 0},
				});

			_mediumGrid = new Grid("medium", new[]
				{
					new[] {2, 0, 0, 0, 8, 0, 3, 0, 0},
					new[] {0, 6, 0, 0, 7, 0, 0, 8, 4},
					new[] {0, 3, 0, 5, 0, 0, 2, 0, 9},
					new[] {0, 0, 0, 1, 0, 5, 4, 0, 8},
					new[] {0, 0, 0, 0, 0, 0, 0, 0, 0},
					new[] {4, 0, 2, 7, 0, 6, 0, 0, 0},
					new[] {3, 0, 1, 0, 0, 7, 0, 4, 0},
					new[] {7, 2, 0, 0, 4, 0, 0, 6, 0},
					new[] {0, 0, 4, 0, 1, 0, 0, 0, 3},
				});

			_hardGrid = new Grid("hard", new[]
				{
					new[] {1, 0, 0, 9, 2, 0, 0, 0, 0},
					new[] {5, 2, 4, 0, 1, 0, 0, 0, 0},
					new[] {0, 0, 0, 0, 0, 0, 0, 7, 0},
					new[] {0, 5, 0, 0, 0, 8, 1, 0, 2},
					new[] {0, 0, 0, 0, 0, 0, 0, 0, 0},
					new[] {4, 0, 2, 7, 0, 0, 0, 9, 0},
					new[] {0, 6, 0, 0, 0, 0, 0, 0, 0},
					new[] {0, 0, 0, 0, 3, 0, 9, 4, 5},
					new[] {0, 0, 0, 0, 7, 1, 0, 0, 6},
				});

			_reallyHardGrid = new Grid("reallyHard", new[]
				{
					new[] {0, 4, 3, 0, 8, 0, 2, 5, 0},
					new[] {6, 0, 0, 0, 0, 0, 0, 0, 0},
					new[] {0, 0, 0, 0, 0, 1, 0, 9, 4},
					new[] {9, 0, 0, 0, 0, 4, 0, 7, 0},
					new[] {0, 0, 0, 6, 0, 8, 0, 0, 0},
					new[] {0, 1, 0, 2, 0, 0, 0, 0, 3},
					new[] {8, 2, 0, 5, 0, 0, 0, 0, 0},
					new[] {0, 0, 0, 0, 0, 0, 0, 0, 5},
					new[] {0, 3, 4, 0, 9, 0, 7, 1, 0},
				});
		}

		[Test]
		public void TestGridToString()
		{
			// Arrange
			var expectedResult =  @"003|020|600
									900|305|001
									001|806|400
									---+---+---
									008|102|900
									700|000|008
									006|708|200
									---+---+---
									002|609|500
									800|203|009
									005|010|300".Replace("\t", "");

			// Act
			var actualResult = _easyGrid.ToString();

			// Assert
			Assert.AreEqual(expectedResult, actualResult);
		}

		[Test]
		public void TestGridSolveEasy()
		{
			// Arrange
			const int expectedCode = 483;

			// Act/Assert
			TestGridSolve(_easyGrid, expectedCode);
		}

		[Test]
		public void TestGridSolveMedium()
		{
			// Arrange
			const int expectedCode = 245;

			// Act/Assert
			TestGridSolve(_mediumGrid, expectedCode);
		}

		[Test]
		public void TestGridSolveHard()
		{
			// Arrange
			const int expectedCode = 176;

			// Act/Assert
			TestGridSolve(_hardGrid, expectedCode);
		}

		[Test]
		public void TestGridSolveReallyHard()
		{
			// Arrange
			const int expectedCode = 143;

			// Act/Assert
			TestGridSolve(_reallyHardGrid, expectedCode);
		}

		private static void TestGridSolve(Grid grid, int expectedCode)
		{
			// Arrange
			const int expectedTotal = (9 * 10) / 2 * 9;

			// Act
			var actualResult = grid.Solve();

			// Assert
			Assert.IsTrue(actualResult);
			Assert.IsFalse(grid.Data.Any(kvp => kvp.Value.FinalValue == 0));
			Assert.AreEqual(expectedTotal, grid.Data.Sum(kvp => kvp.Value.FinalValue));
			Assert.AreEqual(expectedCode, grid.Code());
		}
	}
}
