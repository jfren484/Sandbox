using System;
using System.Drawing;
using System.Windows.Forms;
using System.Xml;
using GridPuzzleLib.Grids;

namespace GridPuzzleLib.GridCells
{
	public abstract class GridCell: UserControl
	{
		#region Constants

		protected static readonly Point[]	CellOffsetPoints	= new Point[]
																													{
																														new Point(-1, 0),
																														new Point(0, -1),
																														new Point(1, 0),
																														new Point(0, 1)
																													};


		#endregion

		#region Private Member Variables

		private	int						column	= 0;
		private	int						row			= 0;
		private	GridCellType	type		= GridCellType.Container;
		private	Grid					grid		= null;

		#endregion

		#region Methods

		public GridCell(Grid grid, int column, int row, GridCellType type)
		{
			this.grid						= grid;

			this.Column					= column;
			this.Row						= row;
			this.GridCellType		= type;

			this.DoubleBuffered	= true;
		}

		protected internal virtual new void Focus()
		{
			base.Focus();
		}

		protected internal GridCell GetCellAtOffset(Point offset, bool wrap)
		{
			GridCell	cell	= null;

			if (this.Grid != null)
			{
				Point		loc		= new Point(this.Column + offset.X, this.Row + offset.Y);

				if (wrap)
				{
					loc.X				= (loc.X + this.Grid.Columns) % this.Grid.Columns;
					loc.Y				= (loc.Y + this.Grid.Rows) % this.Grid.Rows;
				}

				if (this.Grid.IsLocationValid(loc))
					cell				= this.Grid[loc];
			}

			return cell;
		}

		protected internal GridCell GetCellAtOffset(Point offset)
		{
			return this.GetCellAtOffset(offset, false);
		}

		protected internal virtual XmlElement GetXml(XmlDocument xmlDoc)
		{
			XmlElement		element	= xmlDoc.CreateElement(Strings.XmlNameElCell);

			XmlAttribute	attrib	= xmlDoc.CreateAttribute(Strings.XmlNameAttrCellType);
			attrib.Value					= this.TypeString;
			element.Attributes.Append(attrib);

			return element;
		}

		private bool HandleNav(KeyEventArgs e)
		{
			bool	handled	= false;

			switch (e.KeyData)
			{
				case Keys.Up:
				case Keys.Down:
				case Keys.Left:
				case Keys.Right:
					// Left  = 37
					// Up    = 38
					// Right = 39
					// Down  = 40
					GridCell	cell	= this;
					do
					{
						cell	= cell.GetCellAtOffset(CellOffsetPoints[e.KeyValue - 37], true);

						if (cell.Enabled)
						{
							handled	= true;
							cell.Focus();
						}
						else if (cell == this)
							handled	= true;
					}
					while (!handled);
					break;
			}

			return handled;
		}

		protected internal virtual void OnParentDesignModeChanged()
		{
		}

		protected internal virtual void Reset()
		{
		}

		#region Overrides

		protected override bool IsInputKey(Keys keyData)
		{
			bool	isInputKey	= base.IsInputKey(keyData);

			if (!isInputKey)
			{
				switch (keyData)
				{
					case Keys.Up:
					case Keys.Down:
					case Keys.Left:
					case Keys.Right:
						isInputKey	= true;
						break;
				}
			}

			return isInputKey;
		}

		protected override void OnClick(EventArgs e)
		{
			base.OnClick(e);

			this.Focus();
		}

		protected override void OnDoubleClick(EventArgs e)
		{
			base.OnDoubleClick(e);

			this.Focus();
		}

		protected override void OnGotFocus(EventArgs e)
		{
			base.OnGotFocus(e);

			this.Grid.Invalidate(new Rectangle(this.Location.X - 3, this.Location.Y - 3, this.Width + 7, this.Height + 7));
			this.Grid.CurrentCellLocation	= this.GridLocation;
		}

		protected override void OnKeyDown(KeyEventArgs e)
		{
			if (!e.Handled)
				e.Handled	= HandleNav(e);

			base.OnKeyDown(e);
		}

		protected override void OnLostFocus(EventArgs e)
		{
			base.OnLostFocus(e);

			if (!this.ContainsFocus)
				this.Grid.Invalidate(new Rectangle(this.Location.X - 3, this.Location.Y - 3, this.Width + 7, this.Height + 7), true);
		}

		protected override void OnPaint(PaintEventArgs e)
		{
			base.OnPaint(e);

			if (GridCellType == GridCellType.Blank)
				e.Graphics.FillRectangle(new SolidBrush(this.Grid.BehindColor), this.ClientRectangle);
		}

		#endregion

		#endregion

		#region Properties

		public int Column
		{
			get
			{
				return column;
			}
			set
			{
				column	= value;
			}
		}

		public GridCellType GridCellType
		{
			get
			{
				return type;
			}
			set
			{
				if (value != type)
				{
					type	= value;

					this.Refresh();
				}
			}
		}

		public Point GridLocation
		{
			get
			{
				return new Point(this.Column, this.Row);
			}
		}

		public Grid Grid
		{
			get
			{
				return grid;
			}
		}

		public int Row
		{
			get
			{
				return row;
			}
			set
			{
				row	= value;
			}
		}

		public virtual string TypeString
		{
			get
			{
				return this.GridCellType.ToString();
			}
		}

		public virtual bool Valid
		{
			get
			{
				return true;
			}
		}

		#endregion
	}
}
