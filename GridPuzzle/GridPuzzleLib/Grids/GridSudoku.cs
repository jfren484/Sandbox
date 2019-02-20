using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using System.Xml;
using GridPuzzleLib.GridCells;

namespace GridPuzzleLib.Grids
{
	public partial class GridSudoku: GridSmallVal
	{
		#region Private Member Variables

		private int		innerColumns		= 0;
		private int		innerRows				= 0;

		private Font	lockedFont			= null;
		private Color lockedForeColor	= Color.DarkGray;
		private Color lockedBackColor = Color.Empty;

		#endregion

		#region Methods

		public GridSudoku(int cols, int rows): base(cols * rows, cols * rows)
		{
			InitializeComponent();

			this.innerColumns	= cols;
			this.innerRows		= rows;

			for (int row = 0; row < Rows; row++)
			{
				for (int col = 0; col < Columns; col++)
					this.Controls.Add(new GridCellSudoku(this, col, row));
			}
		}

		public GridSudoku(int cols, int rows, XmlNodeList cellNodes): this(cols, rows)
		{
			InitializeComponent();

			if (cellNodes.Count != (Columns * Rows))
				throw new ArgumentOutOfRangeException(Strings.ErrMsgInvalidCellArray);

			for (int row = 0; row < Rows; row++)
			{
				for (int col = 0; col < Columns; col++)
				{
					XmlNode					cellNode	= cellNodes[row * Columns + col];
					GridCellSudoku	cell			= (GridCellSudoku)this[col, row];

					string[]				strVals		= cellNode.Attributes[Strings.XmlNameAttrCellValues].Value.Split('|');
					for (int i = 0; i < strVals.Length; i++)
						cell[i]									= strVals[i];

					if (cell[4].Trim().Length == 0 && cell.HasMiniVals)
						cell.MiniValsDisplayed	= true;

					if (cellNode.Attributes[Strings.XmlNameAttrCellLocked] != null)
						cell.Locked							= Convert.ToBoolean(cellNode.Attributes[Strings.XmlNameAttrCellLocked].Value);
				}
			}
		}

		private void UpdateLockedCells()
		{
			if (this.Cells[0] != null)
			{
				foreach (GridCellSudoku cell in this.Cells)
				{
					if (cell.Locked)
					{
						if (cell.BackColor != this.LockedBackColor)
							cell.BackColor	= this.LockedBackColor;

						if (cell.ForeColor != this.LockedForeColor)
							cell.ForeColor	= this.LockedForeColor;

						if (cell.Font != this.LockedFont)
							cell.Font				= this.LockedFont;
					}
				}
			}
		}

		#region Overrides

		protected internal override XmlElement GetXml(XmlDocument xmlDoc)
		{
			XmlElement		element	= base.GetXml(xmlDoc);
			XmlAttribute	attrib;
			
			attrib								= xmlDoc.CreateAttribute(Strings.XmlNameAttrGridSInnerCols);
			attrib.Value					= this.InnerColumns.ToString();
			element.Attributes.Append(attrib);

			attrib								= xmlDoc.CreateAttribute(Strings.XmlNameAttrGridSInnerRows);
			attrib.Value					= this.InnerRows.ToString();
			element.Attributes.Append(attrib);

			return element;
		}

		protected override void OnBackColorChanged(EventArgs e)
		{
			base.OnBackColorChanged(e);

			UpdateLockedCells();
		}

		protected override void OnDesignModeChanged()
		{
			base.OnDesignModeChanged();

			ContextMenuStrip	menu	= this.DesignMode ? this.CellLockMenu : null;

			foreach (GridCell cell in this.Cells)
				cell.ContextMenuStrip = menu;
		}

		protected override void OnFontChanged(EventArgs e)
		{
			base.OnFontChanged(e);

			UpdateLockedCells();
		}

		protected override void OnForeColorChanged(EventArgs e)
		{
			base.OnForeColorChanged(e);

			UpdateLockedCells();
		}

		protected override void OnPaintBackground(PaintEventArgs e)
		{
			base.OnPaintBackground(e);

			Pen	thickPen	= new Pen(this.ForeColor, 3);

			for (int vert = 1; vert < (this.Columns / this.InnerColumns); vert++)
			{
				int	x	= vert * this.InnerColumns * this.CellWidth;

				e.Graphics.DrawLine(thickPen, x, 0, x, this.Height);
			}

			for (int horiz = 1; horiz < (this.Rows / this.InnerRows); horiz++)
			{
				int	y	= horiz * this.InnerRows * this.CellHeight;

				e.Graphics.DrawLine(thickPen, 0, y, this.Width, y);
			}
		}

		#endregion

		#region Event Handlers

		private void mnuLock_Click(object sender, EventArgs e)
		{
			ToolStripMenuItem	menu	= (ToolStripMenuItem)sender;
			GridCellSudoku		cell	= (GridCellSudoku)((ContextMenuStrip)menu.Owner).SourceControl;

			cell.Locked							= !cell.Locked;
		}

		private void mnuCellLock_Opening(object sender, CancelEventArgs e)
		{
			ContextMenuStrip	menu	= (ContextMenuStrip)sender;
			GridCellSudoku		cell	= (GridCellSudoku)menu.SourceControl;

			cell.Focus();

			mnuLock.Checked	= cell.Locked;
		}

		#endregion

		#endregion

		#region Properties

		protected internal ContextMenuStrip CellLockMenu
		{
			get
			{
				return mnuLockCell;
			}
		}

		public int InnerColumns
		{
			get
			{
				return innerColumns;
			}
		}

		public int InnerRows
		{
			get
			{
				return innerRows;
			}
		}

		public Color LockedBackColor
		{
			get
			{
				return lockedBackColor == Color.Empty ? this.BackColor : lockedBackColor;
			}
			set
			{
				if (value != lockedBackColor)
				{
					lockedBackColor	= value;

					UpdateLockedCells();
				}
			}
		}

		public Font LockedFont
		{
			get
			{
				return lockedFont == null ? this.Font : lockedFont;
			}
			set
			{
				if (value != lockedFont)
				{
					lockedFont	= value;

					UpdateLockedCells();
				}
			}
		}

		public Color LockedForeColor
		{
			get
			{
				return lockedForeColor == Color.Empty ? this.ForeColor : lockedForeColor;
			}
			set
			{
				if (value != lockedForeColor)
				{
					lockedForeColor	= value;

					UpdateLockedCells();
				}
			}
		}

		public override PuzzleType PuzzleType
		{
			get
			{
				return PuzzleType.Sudoku;
			}
		}

		#endregion
	}
}
