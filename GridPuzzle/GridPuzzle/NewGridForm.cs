using System;
using System.Windows.Forms;
using GridPuzzleLib;

namespace GridPuzzle
{
	public partial class NewGridForm: Form
	{
		#region Methods

		public NewGridForm(PuzzleType puzzleType)
		{
			InitializeComponent();

			string	innerStr	= String.Empty;
			string	puzzStr		= puzzleType.ToString();
			int			min				= 0;
			int			max				= 100;
			int			val				= 0;

			switch (puzzleType)
			{
				case PuzzleType.Sudoku:
					innerStr			= "inner ";
					min						= 2;
					max						= 5;
					val						= 3;
					break;
				default:
					min						= 4;
					max						= 50;
					val						= 10;
					break;
			}

			lblInstructions.Text	= String.Format(lblInstructions.Text, innerStr, puzzStr);

			numColumns.Minimum		= min;
			numColumns.Maximum		= max;
			numColumns.Value			= val;

			numRows.Minimum				= min;
			numRows.Maximum				= max;
			numRows.Value					= val;
		}

		#endregion

		#region Properties

		public int Columns
		{
			get
			{
				return (int)numColumns.Value;
			}
			set
			{
				numColumns.Value	= value;
			}
		}

		public int Rows
		{
			get
			{
				return (int)numRows.Value;
			}
			set
			{
				numRows.Value	= value;
			}
		}

		#endregion
	}
}