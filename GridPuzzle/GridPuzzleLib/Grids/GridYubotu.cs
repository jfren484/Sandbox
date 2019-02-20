using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using System.Xml;
using GridPuzzleLib.GridCells;

namespace GridPuzzleLib.Grids
{
	public partial class GridYubotu: Grid
	{
		#region Private Member Variables

		private Color	boatColor		= Color.Empty;
		private Color	waterColor	= Color.DeepSkyBlue;

		#endregion

		#region Methods

		public GridYubotu(int cols, int rows): base(cols, rows)
		{
			InitializeComponent();
			this.BehindColor	= Color.Empty;

			this.SetLegend(new LegendYubotu(this, null));

			for (int row = 0; row < Rows; row++)
			{
				for (int col = 0; col < Columns; col++)
				{
					if (col < Columns - 1 && row < Rows - 1)
						this.Controls.Add(new GridCellYubotu(this, col, row));
					else if (col < Columns - 1 || row < Rows - 1)
						this.Controls.Add(new GridCellYubotuVal(this, col, row, "0"));
					else
						this.Controls.Add(new GridCellBlank(this, col, row));
				}
			}
		}

		public GridYubotu(int cols, int rows, XmlNodeList cellNodes, XmlElement legendNode): this(cols, rows)
		{
			if (cellNodes.Count != (Columns * Rows))
				throw new ArgumentOutOfRangeException(Strings.ErrMsgInvalidCellArray);

			this.SetLegend(new LegendYubotu(this, legendNode));

			for (int row = 0; row < Rows; row++)
			{
				for (int col = 0; col < Columns; col++)
				{
					XmlNode		cellNode								= cellNodes[row * Columns + col];
					GridCell	cell										= this[col, row];

					if (cell is GridCellYubotu)
					{
						((GridCellYubotu)cell).State		= (GridCellYubotuState)Enum.Parse(typeof(GridCellYubotuState), cellNode.Attributes[Strings.XmlNameAttrCellState].Value, true);

						if (cellNode.Attributes[Strings.XmlNameAttrCellLocked] != null)
							((GridCellYubotu)cell).Locked	= Convert.ToBoolean(cellNode.Attributes[Strings.XmlNameAttrCellLocked].Value);
					}
					else if (cell is GridCellYubotuVal)
						((GridCellYubotuVal)cell).Value	= cellNode.Attributes[Strings.XmlNameAttrCellValue].Value;
				}
			}
		}

		#region Overrides

		protected override List<Rectangle> GetGridRectangles()
		{
			List<Rectangle>	rects	= base.GetGridRectangles();

			int							maxX	= (this.Columns - 1) * this.CellWidth - 1;
			int							maxY	= (this.Rows - 1) * this.CellHeight - 1;

			// Remove any rectangles that are in the last row or column.
			for (int i = 0; i < rects.Count; i++)
			{
				if (rects[i].X > maxX || rects[i].Y > maxY)
				{
					rects.RemoveAt(i);
					i--;
				}
			}

			return rects;
		}

		protected override void OnDesignModeChanged()
		{
			base.OnDesignModeChanged();

			ContextMenuStrip	menu	= this.DesignMode ? this.CellLockMenu : null;

			foreach (GridCell cell in this.Cells)
			{
				if (cell is GridCellYubotu)
					cell.ContextMenuStrip	= menu;
			}
		}

		protected override void OnPaintBackground(PaintEventArgs e)
		{
			base.OnPaintBackground(e);

			SolidBrush	waterBrush	= new SolidBrush(this.WaterColor);

			foreach (GridCell cell in this.Cells)
			{
				if (cell is GridCellYubotu && ((GridCellYubotu)cell).State != GridCellYubotuState.Unknown && cell != this.ActiveControl)
					e.Graphics.FillRectangle(waterBrush, cell.Column * CellWidth + 1, cell.Row * CellHeight + 1, CellWidth - 1, CellHeight - 1);
			}
		}

		protected override void OnParentChanged(EventArgs e)
		{
			base.OnParentChanged(e);

			if (this.Parent != null)
			{
				foreach (GridCell cell in this.Cells)
				{
					if (cell is GridCellYubotuVal)
						cell.BackColor	= this.Parent.BackColor;
				}
			}
		}

		#endregion

		#region Event Handlers

		private void mnuLock_Click(object sender, EventArgs e)
		{
			ToolStripMenuItem		menu	= (ToolStripMenuItem)sender;
			GridCellYubotu			cell	= (GridCellYubotu)((ContextMenuStrip)menu.Owner).SourceControl;

			cell.State								= (GridCellYubotuState)Enum.Parse(typeof(GridCellYubotuState), menu.Name.Substring(7));
			cell.Locked								= cell.State == GridCellYubotuState.Unknown ? false : true;
		}

		private void mnuLockCell_Opening(object sender, CancelEventArgs e)
		{
			ContextMenuStrip	menu				= (ContextMenuStrip)sender;
			GridCellYubotu		cell				= (GridCellYubotu)menu.SourceControl;

			cell.Focus();

			foreach (ToolStripMenuItem item in menu.Items)
				item.Checked								= false;

			ToolStripMenuItem	itemToCheck	= (ToolStripMenuItem)menu.Items["mnuLock" + cell.State.ToString()];
			itemToCheck.Checked						= true;
		}

		#endregion

		#endregion

		#region Properties

		public Color BoatColor
		{
			get
			{
				return boatColor == Color.Empty ? this.ForeColor : boatColor;
			}
			set
			{
				boatColor	= value;
			}
		}

		protected internal ContextMenuStrip CellLockMenu
		{
			get
			{
				return mnuLockCell;
			}
		}

		public override PuzzleType PuzzleType
		{
			get
			{
				return PuzzleType.Yubotu;
			}
		}

		public Color WaterColor
		{
			get
			{
				return waterColor;
			}
			set
			{
				boatColor	= value;
			}
		}

		#endregion
	}
}
