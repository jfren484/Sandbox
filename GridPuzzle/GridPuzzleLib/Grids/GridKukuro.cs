using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using System.Xml;
using GridPuzzleLib.GridCells;

namespace GridPuzzleLib.Grids
{
	public partial class GridKukuro: GridSmallVal
	{
		#region Private Member Variables

		private int		anchorDividerWidth	= 3;
		private Font	anchorFont					= new Font(SystemFonts.DefaultFont.FontFamily, 9);
		private Color anchorBackColor			= Color.Black;
		private Color anchorForeColor			= Color.White;

		#endregion

		#region Methods

		public GridKukuro(int cols, int rows): base(cols, rows)
		{
			InitializeComponent();

			for (int row = 0; row < Rows; row++)
			{
				for (int col = 0; col < Columns; col++)
				{
					this.Controls.Add(new GridCellKukuroNormal(this, col, row));
				}
			}
		}

		public GridKukuro(int cols, int rows, XmlNodeList cellNodes): base(cols, rows)
		{
			InitializeComponent();

			if (cellNodes.Count != (Columns * Rows))
				throw new ArgumentOutOfRangeException(Strings.ErrMsgInvalidCellArray);

			for (int row = 0; row < Rows; row++)
			{
				for (int col = 0; col < Columns; col++)
				{
					XmlNode							cellNode						= cellNodes[row * Columns + col];
					GridCellKukuroType	kType								= (GridCellKukuroType)Enum.Parse(typeof(GridCellKukuroType),
																										cellNode.Attributes[Strings.XmlNameAttrCellType].Value, true);

					GridCell						cell								= CreateCell(col, row, kType);

					if (cell is GridCellContainer)
					{
						string[]					strVals							= cellNode.Attributes[Strings.XmlNameAttrCellValues].Value.Split('|');
						for (int i = 0; i < strVals.Length; i++)
							((GridCellContainer)cell)[i] = strVals[i];

						if (cell is GridCellKukuroNormal)
						{
							GridCellKukuroNormal	normalCell		= (GridCellKukuroNormal)cell;
							if (normalCell[4].Trim().Length == 0 && normalCell.HasMiniVals)
							{
								normalCell.MiniValsDisplayed			= true;
							}
						}
					}

					this.Controls.Add(cell);
				}
			}
		}

		protected internal GridCell CreateCell(int column, int row, GridCellKukuroType kType)
		{
			GridCell	cell	= null;

			switch (kType)
			{
				case GridCellKukuroType.Blank:
					cell	= new GridCellKukuroBlank(this, column, row);
					break;
				case GridCellKukuroType.Anchor:
					cell	= new GridCellKukuroAnchor(this, column, row);
					break;
				case GridCellKukuroType.Normal:
					cell	= new GridCellKukuroNormal(this, column, row);
					break;
			}

			return cell;
		}

		private void ReplaceCell(GridCell oldCell, GridCellKukuroType kType)
		{
			GridCell newCell = CreateCell(oldCell.Column, oldCell.Row, kType);

			if (!oldCell.GetType().IsInstanceOfType(newCell))
			{
				this.Controls.Remove(oldCell);
				this.Controls.Add(newCell);

				if (this.DesignMode)
				{
					if (oldCell.GetCellAtOffset(new Point(-1, 0)) /*.Column > 0 && this[oldCell.Column - 1, oldCell.Row]*/ is GridCellKukuroAnchor)
						((GridCellKukuroAnchor)oldCell.GetCellAtOffset(new Point(-1, 0))).UpdateAnchorCtlsEnabled();

					if (oldCell.GetCellAtOffset(new Point(0, -1)) is GridCellKukuroAnchor)
						((GridCellKukuroAnchor)oldCell.GetCellAtOffset(new Point(0, -1))).UpdateAnchorCtlsEnabled();
				}

				if (kType == GridCellKukuroType.Blank)
				{
					for (int i = 0; i < 2; i++)
					{
						GridCell	cell	= newCell.GetCellAtOffset(new Point(i, (i + 1) % 2));
						if (cell != null && cell is GridCellKukuroNormal)
							ReplaceCell(cell, GridCellKukuroType.Anchor);
					}
				}

				newCell.Focus();
			}
		}

		#region Overrides

		protected override void OnControlAdded(ControlEventArgs e)
		{
			base.OnControlAdded(e);

			e.Control.KeyDown	+= new KeyEventHandler(GridCellKukuro_KeyDown);
		}

		protected override void OnDesignModeChanged()
		{
			base.OnDesignModeChanged();

			ContextMenuStrip	menu	= this.DesignMode ? this.CellTypeMenu : null;

			foreach (GridCell cell in this.Cells)
				cell.ContextMenuStrip = menu;
		}

		protected override void OnParentChanged(EventArgs e)
		{
			base.OnParentChanged(e);

			if (this.Parent != null)
			{
				this.AnchorFont				= new Font(this.Parent.Font.FontFamily, 9, FontStyle.Bold);
				this.AnchorBackColor	= this.Parent.ForeColor;
				this.AnchorForeColor	= this.Parent.BackColor;
				this.SmallFont				= new Font(this.Parent.Font.FontFamily, 7);
			}
		}

		#endregion

		#region Event Handlers

		private void GridCellKukuro_KeyDown(object sender, KeyEventArgs e)
		{
			GridCell	cell	= (GridCell)sender;

			if (this.DesignMode)
			{
				switch (e.KeyData)
				{
					case Keys.A:
						ReplaceCell(cell, GridCellKukuroType.Anchor);
						e.Handled = true;
						break;
					case Keys.B:
						ReplaceCell(cell, GridCellKukuroType.Blank);
						e.Handled = true;
						break;
					case Keys.N:
						ReplaceCell(cell, GridCellKukuroType.Normal);
						e.Handled = true;
						break;
				}
			}

			base.OnKeyDown(e);
		}

		private void mnuType_Click(object sender, EventArgs e)
		{
			GridCell	cell	= (GridCell)((ContextMenuStrip)((ToolStripDropDownItem)sender).Owner).SourceControl;

			if (sender == mnuBlank)
				ReplaceCell(cell, GridCellKukuroType.Blank);
			else if (sender == mnuAnchor)
				ReplaceCell(cell, GridCellKukuroType.Anchor);
			else if (sender == mnuNormal)
				ReplaceCell(cell, GridCellKukuroType.Normal);
		}

		private void mnuCellType_Opening(object sender, CancelEventArgs e)
		{
			ContextMenuStrip	menu	= (ContextMenuStrip)sender;
			GridCell					cell	= (GridCell)menu.SourceControl;

			cell.Focus();

			foreach (ToolStripMenuItem item in menu.Items)
				item.Checked	= false;

			if (cell is GridCellKukuroBlank)
				mnuBlank.Checked	= true;
			else if (cell is GridCellKukuroAnchor)
				mnuAnchor.Checked	= true;
			else
				mnuNormal.Checked	= true;
		}

		#endregion

		#endregion

		#region Properties

		public Color AnchorBackColor
		{
			get
			{
				return anchorBackColor;
			}
			set
			{
				anchorBackColor	= value;
			}
		}

		public int AnchorDividerWidth
		{
			get
			{
				return anchorDividerWidth;
			}
			set
			{
				if (value < 1)
					throw new ArgumentOutOfRangeException(Strings.ErrMsgInvalidAnchorDividerWidth);

				anchorDividerWidth	= value;
			}
		}

		public Font AnchorFont
		{
			get
			{
				return anchorFont;
			}
			set
			{
				if (value != anchorFont)
				{
					anchorFont	= value;

					foreach (GridCell cell in this.Cells)
					{
						if (cell is GridCellKukuroAnchor)
							((GridCellKukuroAnchor)cell).UpdateChildControls();
					}
				}
			}
		}

		public Color AnchorForeColor
		{
			get
			{
				return anchorForeColor;
			}
			set
			{
				if (value != anchorForeColor)
				{
					anchorForeColor	= value;

					foreach (GridCell cell in this.Cells)
					{
						if (cell is GridCellKukuroAnchor)
							((GridCellKukuroAnchor)cell).UpdateChildControls();
					}
				}
			}
		}

		protected internal ContextMenuStrip CellTypeMenu
		{
			get
			{
				return mnuCellType;
			}
		}

		public override PuzzleType PuzzleType
		{
			get
			{
				return PuzzleType.Kukuro;
			}
		}

		#endregion
	}
}
