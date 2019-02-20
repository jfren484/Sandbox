using System;
using System.Collections.Generic;
using System.Drawing;
using System.Windows.Forms;
using System.Xml;
using GridPuzzleLib.GridCells;

namespace GridPuzzleLib.Grids
{
	public class GridHitori: Grid
	{
		#region Private Member Variables

		private Color	shadeColor			= SystemColors.ControlDark;
		private int		circlePenWidth	= 2;

		#endregion

		#region Methods

		public GridHitori(int cols, int rows): base(cols, rows)
		{
			for (int row = 0; row < Rows; row++)
			{
				for (int col = 0; col < Columns; col++)
					this.Controls.Add(new GridCellHitori(this, col, row, "0"));
			}
		}

		public GridHitori(int cols, int rows, XmlNodeList cellNodes): this(cols, rows)
		{
			if (cellNodes.Count != (Columns * Rows))
				throw new ArgumentOutOfRangeException(Strings.ErrMsgInvalidCellArray);

			for (int row = 0; row < Rows; row++)
			{
				for (int col = 0; col < Columns; col++)
				{
					XmlNode					cellNode	= cellNodes[row * Columns + col];
					GridCellHitori	cell			= (GridCellHitori)this[col, row];
					cell.Value								= cellNode.Attributes[Strings.XmlNameAttrCellValue].Value;
					cell.State								= (GridCellHitoriState)Enum.Parse(typeof(GridCellHitoriState), cellNode.Attributes[Strings.XmlNameAttrCellState].Value, true);
				}
			}
		}

		#region Overrides

		protected override void OnPaintBackground(PaintEventArgs e)
		{
			base.OnPaintBackground(e);

			if (!DesignMode)
			{
				SolidBrush	shadeBrush	= new SolidBrush(this.ShadeColor);

				foreach (Control ctl in this.Controls)
				{
					if (ctl is GridCellHitori)
					{
						GridCellHitori	cell	= (GridCellHitori)ctl;

						if (cell.State == GridCellHitoriState.Shaded && cell != this.ActiveControl)
						{
							e.Graphics.FillRectangle(shadeBrush, cell.Column * CellWidth + 1, cell.Row * CellHeight + 1, CellWidth - 1, CellHeight - 1);
						}
					}
				}
			}
		}

		#endregion

		#endregion

		#region Properties

		public int CirclePenWidth
		{
			get
			{
				return circlePenWidth;
			}
			set
			{
				if (value < 1)
					throw new ArgumentOutOfRangeException(Strings.ErrMsgInvalidCirclePenWidth);

				circlePenWidth	= value;
			}
		}

		public Color ShadeColor
		{
			get
			{
				return shadeColor;
			}
			set
			{
				shadeColor	= value;
			}
		}

		public override PuzzleType PuzzleType
		{
			get
			{
				return PuzzleType.Hitori;
			}
		}

		#endregion
	}
}
