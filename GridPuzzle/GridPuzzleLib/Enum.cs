namespace GridPuzzleLib
{
	public enum GridCellType
	{
		Container	= 0,
		Blank			= 1
	}

	public enum GridCellHitoriState
	{
		Normal		= 0,
		Circled		= 1,
		Shaded		= 2
	}

	public enum GridCellKukuroType
	{
		Normal		= 0,
		Anchor		= 1,
		Blank			= 2
	}

	public enum GridCellYubotuState
	{
		Unknown		= 0,
		Water			= 1,
		Circle		= 2,
		Left			= 3,
		Up				= 4,
		Right			= 5,
		Down			= 6,
		Square		= 7
	}

	public enum PuzzleType
	{
		Generic		= 0,
		Hitori		= 1,
		Kukuro		= 2,
		Sudoku		= 3,
		Yubotu		= 4
	}
}
