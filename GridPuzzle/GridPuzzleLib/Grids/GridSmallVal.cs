using System;
using System.Drawing;
using GridPuzzleLib.GridCells;

namespace GridPuzzleLib.Grids
{
	public class GridSmallVal: Grid
	{
		#region Private Member Variables

		private Font	smallFont	= new Font(SystemFonts.DefaultFont.FontFamily, 7);

		#endregion

		#region Methods

		public GridSmallVal(): this(10, 10)
		{
		}

		public GridSmallVal(int columns, int rows): base(columns, rows)
		{
		}

		#endregion

		#region Properties

		public Font SmallFont
		{
			get
			{
				return smallFont;
			}
			set
			{
				if (value != smallFont)
				{
					smallFont	= value;

					foreach (GridCell cell in this.Cells)
					{
						if (cell is GridCellNineVal)
							((GridCellNineVal)cell).UpdateChildControls();
					}
				}
			}
		}

		#endregion
	}
}
