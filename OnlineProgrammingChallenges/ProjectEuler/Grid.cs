// ReSharper disable AccessToModifiedClosure
using System;
using System.Collections.Generic;
using System.Linq;

namespace ProjectEuler
{
	public class GridLocation
	{
		public int Row { get; private set; }
		public int Col { get; private set; }
		public int Box { get; private set; }

		public GridLocation(int row, int col)
		{
			Row = row;
			Col = col;

			Box = Row / 3 * 3 + Col / 3;
		}

		public override bool Equals(object obj)
		{
			var compareTo = obj as GridLocation;

			return compareTo != null && compareTo.Row == Row && compareTo.Col == Col;
		}

		public override int GetHashCode()
		{
			return (Row * 10 + Col).GetHashCode();
		}
	}

	public class GridCell
	{
		public int FinalValue { get; set; }
		public List<int> PossibleValues { get; private set; }

		public GridCell(int finalValue)
		{
			FinalValue = finalValue;
			PossibleValues = new List<int>(9);
		}

		public GridCell(int finalValue, IEnumerable<int> possibleValues)
		{
			FinalValue = finalValue;
			PossibleValues = new List<int>(possibleValues);
		}
	}

	public class GridException : ApplicationException { }

	public class GridGuessState
	{
		public Dictionary<GridLocation, GridCell> Data { get; set; }
		public int GuessIndex { get; set; }
	}

	public class Grid
	{
		#region Properties

		public string Name { get; private set; }
		public Dictionary<GridLocation, GridCell> Data { get; private set; }

		public int this[int row, int col]
		{
			get { return Data[new GridLocation(row, col)].FinalValue; }
			set { Data[new GridLocation(row, col)].FinalValue = value; }
		}

		#endregion

		#region Constructor
		// ReSharper disable ParameterTypeCanBeEnumerable.Local

		public Grid(string name, int[][] data)
		{
			Name = name;
			Data = data.SelectMany(
				(line, row) => line.Select(
					(n, col) => new KeyValuePair<GridLocation, GridCell>(new GridLocation(row, col), new GridCell(n))))
				.ToDictionary(cell => cell.Key, cell => cell.Value);

			Data.ForEach(cell => cell.Value.PossibleValues
									.AddRange(Enumerable.Range(1, 9)
											  	.Where(n => this[cell.Key.Row, cell.Key.Col] == 0 &&
											  				!RowContains(cell.Key.Row, n) &&
											  				!ColumnContains(cell.Key.Col, n) &&
											  				!BoxContains(cell.Key.Box, n))));
		}

		// ReSharper restore ParameterTypeCanBeEnumerable.Local
		#endregion

		#region Overridden Methods

		public override string ToString()
		{
			return Data
				.GroupBy(cell => cell.Key.Row)
				.Select(group => string
									.Concat(group.Select(cell => cell.Value.FinalValue))
								 	.Insert(6, "|")
								 	.Insert(3, "|")).ToList()
				.InsertAndReturn(6, "---+---+---")
				.InsertAndReturn(3, "---+---+---")
				.Join("\r\n");
		}

		#endregion

		#region Public Methods

		public int Code()
		{
			return this[0, 0] * 100 + this[0, 1] * 10 + this[0, 2];
		}

		public int Unsolved()
		{
			return Data.Count(cell => cell.Value.FinalValue == 0);
		}

		public bool Solve()
		{
			var unsolved = Unsolved();

			var savedData = new Stack<GridGuessState>();

			while (unsolved > 0)
			{
				var updated = 0;
				var guessIndex = 0;

				try
				{
					// Find squares where there is only one possible number.
					Data.Where(cell => cell.Value.PossibleValues.Count == 1)
						.ForEach(cell => PromoteValueToGrid(cell.Key, cell.Value.PossibleValues[0], ref updated));

					unsolved -= updated;
					if (unsolved == 0) continue;

					// Find sections (Row/Column/Box) where there is only one available square for a given number.
					var only = Data.Where(cell => cell.Value.FinalValue == 0).Select(testLoc => new
						{
							Cell = testLoc,
							N = testLoc.Value.PossibleValues.FirstOrDefault(n =>
								Data.Where(cell => cell.Key.Row == testLoc.Key.Row).Count(cell => cell.Value.PossibleValues.Contains(n)) == 1 ||
								Data.Where(cell => cell.Key.Col == testLoc.Key.Col).Count(cell => cell.Value.PossibleValues.Contains(n)) == 1 ||
								Data.Where(cell => cell.Key.Box == testLoc.Key.Box).Count(cell => cell.Value.PossibleValues.Contains(n)) == 1)
						})
						.FirstOrDefault(x => x.N != 0);
					if (only != null)
					{
						PromoteValueToGrid(only.Cell.Key, only.N, ref updated);
						--unsolved;
						continue;  // Continue unconditionally so the simpler algorithm above will be run.
					}

					// Claiming
					updated = 0;
					for (var box = 0; box < 9; box++)
					{
						for (var n = 1; n <= 9; n++)
						{
							var rows = Data
								.Where(cell => cell.Key.Box == box && cell.Value.PossibleValues.Contains(n))
								.Select(cell => cell.Key.Row)
								.Distinct();
							if (rows.Count() == 1)
							{
								// remove n as a possible value from cells in row but not in box
								updated += Data
									.Where(cell => cell.Key.Row == rows.Single() && cell.Key.Box != box && cell.Value.PossibleValues.Contains(n))
									.ForEach(cell => cell.Value.PossibleValues.Remove(n));
							}

							var columns = Data
								.Where(cell => cell.Key.Box == box && cell.Value.PossibleValues.Contains(n))
								.Select(cell => cell.Key.Col)
								.Distinct();
							if (columns.Count() == 1)
							{
								// remove n as a possible value from cells in column but not in box
								updated += Data
									.Where(cell => cell.Key.Col == columns.Single() && cell.Key.Box != box && cell.Value.PossibleValues.Contains(n))
									.ForEach(cell => cell.Value.PossibleValues.Remove(n));
							}
						}
					}
					if (updated > 0) continue;
				}
				catch (GridException)
				{
					GridGuessState guessState;
					do { guessState = savedData.Pop(); } while (guessState.GuessIndex == 1);
					Data = guessState.Data;
					unsolved = Unsolved();
					guessIndex = 1;
				}

				// Guess
				var guess = Data.Where(cell => cell.Value.PossibleValues.Count == 2).FirstOrDefault();
				if (guess.Key != null)
				{
					savedData.Push(new GridGuessState
					{
						GuessIndex = guessIndex,
						Data = Data
							.ToDictionary(cell => new GridLocation(cell.Key.Row, cell.Key.Col),
										  cell => new GridCell(cell.Value.FinalValue, cell.Value.PossibleValues))
					});

					PromoteValueToGrid(guess.Key, guess.Value.PossibleValues[guessIndex], ref updated);
					--unsolved;
					continue;
				}

				Console.WriteLine(@"Didn't find any new squares to solve for Grid {0}.  {1} squares still unsolved.", Name, unsolved);
				break;
			}

			return unsolved == 0;
		}

		#endregion

		#region Private Helper Methods

		private void PromoteValueToGrid(GridLocation location, int value, ref int updated)
		{
			if (RowContains(location.Row, value) || ColumnContains(location.Col, value) || BoxContains(location.Box, value))
				throw new GridException();

			++updated;
			Data[location].FinalValue = value;
			Data[location].PossibleValues.Clear();

			Data.Where(cell => cell.Value.PossibleValues.Contains(value) &&
							  (cell.Key.Row == location.Row ||
							   cell.Key.Col == location.Col ||
							   cell.Key.Box == location.Box))
				.ForEach(cell =>
				{
					cell.Value.PossibleValues.Remove(value);
					if (!cell.Value.PossibleValues.Any())
						throw new GridException();
				});
		}

		private bool BoxContains(int box, int n)
		{
			return Data.Any(cell => cell.Key.Box == box && cell.Value.FinalValue == n);
		}

		private bool ColumnContains(int col, int n)
		{
			return Data.Any(cell => cell.Key.Col == col && cell.Value.FinalValue == n);
		}

		private bool RowContains(int row, int n)
		{
			return Data.Any(cell => cell.Key.Row == row && cell.Value.FinalValue == n);
		}

		#endregion
	}
}
// ReSharper restore AccessToModifiedClosure
