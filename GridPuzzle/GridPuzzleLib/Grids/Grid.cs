using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Windows.Forms;
using System.Xml;
using GridPuzzleLib.GridCells;

namespace GridPuzzleLib.Grids
{
	public class Grid: UserControl
	{
		#region Private Member Variables

		private int					columns			= 0;
		private int					rows				= 0;
		private int					cellWidth		= 40;
		private int					cellHeight	= 40;

		private GridCell[]	cells				= null;
		private Point				currentCell	= new Point(0, 0);

		private bool				designMode	= false;

		private Color				highBack		= SystemColors.Highlight;
		private Color				behindColor	= Color.Empty;

		private Legend			legend			= null;

		#endregion

		#region Methods

		public Grid(): this(10, 10)
		{
		}

		public Grid(int columns, int rows)
		{
			this.columns				= columns;
			this.rows						= rows;

			this.cells					= new GridCell[columns * rows];

			this.Size						= new Size(this.CellWidth * columns + 1, this.CellHeight * rows + 1);
			this.BackColor			= Color.White;
			this.ForeColor			= Color.Black;
			this.DoubleBuffered	= true;
		}

		public virtual new void Focus()
		{
			base.Focus();

			for (int i = 0; i < this.Cells.Length; i++)
			{
				if (this.Cells[i].Enabled)
				{
					this.Cells[i].Focus();
					break;
				}
			}
		}

		protected virtual List<Rectangle> GetGridRectangles()
		{
			List<Rectangle>	rects	= new List<Rectangle>(this.Cells.Length);

			foreach (GridCell cell in this.Cells)
			{
				if (cell.GridCellType == GridCellType.Container)
					rects.Add(new Rectangle(cell.Column * CellWidth, cell.Row * CellHeight, CellWidth, CellHeight));
			}

			return rects;
		}

		protected internal virtual XmlElement GetXml(XmlDocument xmlDoc)
		{
			XmlAttribute	attrib	= null;
			XmlElement		element	= xmlDoc.CreateElement(Strings.XmlNameElPuzzle);
			{
				attrib							= xmlDoc.CreateAttribute(Strings.XmlNameAttrGridType);
				attrib.Value				= this.PuzzleType.ToString();
				element.Attributes.Append(attrib);

				attrib							= xmlDoc.CreateAttribute(Strings.XmlNameAttrGridCols);
				attrib.Value				= this.Columns.ToString();
				element.Attributes.Append(attrib);

				attrib							= xmlDoc.CreateAttribute(Strings.XmlNameAttrGridRows);
				attrib.Value				= this.Rows.ToString();
				element.Attributes.Append(attrib);

				foreach (GridCell cell in this.Cells)
					element.AppendChild(cell.GetXml(xmlDoc));

				if (this.Legend != null)
					element.AppendChild(this.Legend.GetXml(xmlDoc));
			}

			return element;
		}

		protected internal bool IsLocationValid(Point loc)
		{
			bool	valid	= false;

			if (loc.X >= 0 && loc.X < this.Columns && loc.Y >= 0 && loc.Y < this.Rows)
				valid	= true;

			return valid;
		}

		protected virtual void OnDesignModeChanged()
		{
			if (this.Legend != null)
				this.Legend.DesignMode	= this.DesignMode;

			foreach (GridCell cell in this.Cells)
				cell.OnParentDesignModeChanged();

			this[this.CurrentCellLocation].Focus();

			this.Refresh();
		}

		public virtual void Reset()
		{
			foreach (GridCell cell in this.Cells)
				cell.Reset();
		}

		public void SaveToFile(string fileName)
		{
			XmlDocument	xmlDoc	= new XmlDocument();
			xmlDoc.AppendChild(GetXml(xmlDoc));
			xmlDoc.Save(fileName);
		}

		protected void SetLegend(Legend legend)
		{
			this.legend	= legend;
		}

		#region Overrides

		protected override void OnControlAdded(ControlEventArgs e)
		{
			base.OnControlAdded(e);

			if (e.Control is GridCell)
			{
				GridCell	cell		= (GridCell)e.Control;
				int				index		= cell.Row * Columns + cell.Column;

				this.Cells[index]	= cell;
			}
		}

		protected override void OnControlRemoved(ControlEventArgs e)
		{
			base.OnControlRemoved(e);

			if (e.Control is GridCell)
			{
				GridCell	cell		= (GridCell)e.Control;
				int				index		= cell.Row * Columns + cell.Column;

				this.Cells[index]	= null;
			}
		}

		protected override void OnLayout(LayoutEventArgs e)
		{
			base.OnLayout(e);

			foreach (Control ctl in this.Controls)
			{
				if (ctl is GridCell)
				{
					GridCell cell	= (GridCell)ctl;
					cell.Size			= new Size(this.CellInnerWidth, this.CellInnerHeight);
					cell.Location	= new Point(cell.Column * this.CellWidth + 3, cell.Row * this.CellHeight + 3);
				}
			}
		}

		protected override void OnPaintBackground(PaintEventArgs e)
		{
			base.OnPaintBackground(e);

			e.Graphics.FillRectangle(new SolidBrush(this.BehindColor), this.ClientRectangle);

			if (this.Cells[0] != null)
			{
				Brush	backBrush	= new SolidBrush(this.BackColor);
				Pen		normalPen	= new Pen(this.ForeColor, 1);

				Rectangle[]	rects	= GetGridRectangles().ToArray();
				e.Graphics.FillRectangles(backBrush, rects);
				e.Graphics.DrawRectangles(normalPen, rects);

				if (this.ActiveControl is GridCell)
				{
					GridCell	cell	= (GridCell)this.ActiveControl;
					e.Graphics.FillRectangle(new SolidBrush(this.HighlightBackColor), cell.Column * CellWidth, cell.Row * CellHeight, CellWidth + 1, CellHeight + 1);
				}
			}
		}

		protected override void OnSizeChanged(EventArgs e)
		{
			base.OnSizeChanged(e);

			this.cellWidth	= Math.Max((this.Size.Width - 1) / columns, 2);
			this.cellHeight	= Math.Max((this.Size.Height - 1) / rows, 2);

			this.Size				= new Size(columns * CellWidth + 1, rows * cellHeight + 1);
		}

		#endregion

		#endregion

		#region Static Methods

		public static Grid FromXml(string fileName)
		{
			Grid		grid	= null;
			string	type	= String.Empty;

			try
			{
				XmlDocument	xmlDoc			= new XmlDocument();
				xmlDoc.Load(fileName);

				XmlElement	puzElement	= xmlDoc[Strings.XmlNameElPuzzle];

				type										= puzElement.Attributes[Strings.XmlNameAttrGridType].Value;
				PuzzleType	pType				= (PuzzleType)Enum.Parse(typeof(PuzzleType), type, true);
				int					cols				= Convert.ToInt32(puzElement.Attributes[Strings.XmlNameAttrGridCols].Value);
				int					rows				= Convert.ToInt32(puzElement.Attributes[Strings.XmlNameAttrGridRows].Value);

				switch (pType)
				{
					case PuzzleType.Hitori:
						grid	= new GridHitori(cols, rows, puzElement.GetElementsByTagName(Strings.XmlNameElCell));
						break;
					case PuzzleType.Kukuro:
						grid	= new GridKukuro(cols, rows, puzElement.GetElementsByTagName(Strings.XmlNameElCell));
						break;
					case PuzzleType.Sudoku:
						cols	= Convert.ToInt32(puzElement.Attributes[Strings.XmlNameAttrGridSInnerCols].Value);
						rows	= Convert.ToInt32(puzElement.Attributes[Strings.XmlNameAttrGridSInnerRows].Value);
						grid	= new GridSudoku(cols, rows, puzElement.GetElementsByTagName(Strings.XmlNameElCell));
						break;
					case PuzzleType.Yubotu:
						grid = new GridYubotu(cols, rows, puzElement.GetElementsByTagName(Strings.XmlNameElCell), puzElement[Strings.XmlNameElLegend]);
						break;
					default:
						throw new Exception(String.Format(Strings.ErrMsgGridTypeNotImplemented_p, pType));
				}
			}
			catch (InvalidCastException)
			{
				throw new Exception(String.Format(Strings.ErrMsgGridTypeNotImplemented_p, type));
			}
			catch (Exception ex)
			{
				throw new Exception(Strings.ErrMsgInvalidPuzzleFile, ex);
			}

			return grid;
		}

		#endregion

		#region Indexers

		public GridCell this[int column, int row]
		{
			get
			{
				return this.Cells[row * this.Columns + column];
			}
		}

		public GridCell this[Point loc]
		{
			get
			{
				return this.Cells[loc.Y * this.Columns + loc.X];
			}
		}

		#endregion

		#region Properties

		public Color BehindColor
		{
			get
			{
				Color	color;

				if (behindColor != Color.Empty)
					color	= this.behindColor;
				else if (this.Parent != null)
					color	= this.Parent.BackColor;
				else
					color	= Color.White;

				return color;
			}
			set
			{
				if (value != this.behindColor)
					this.behindColor	= value;
			}
		}

		public int CellHeight
		{
			get
			{
				return this.cellHeight;
			}
		}

		public int CellInnerHeight
		{
			get
			{
				return this.CellHeight - 5;
			}
		}

		public int CellInnerWidth
		{
			get
			{
				return this.CellWidth - 5;
			}
		}

		public GridCell[] Cells
		{
			get
			{
				return this.cells;
			}
		}

		public int CellWidth
		{
			get
			{
				return this.cellWidth;
			}
		}

		public int Columns
		{
			get
			{
				return this.columns;
			}
		}

		public Point CurrentCellLocation
		{
			get
			{
				return this.currentCell;
			}
			set
			{
				if (value != currentCell)
					this.currentCell	= value;
			}
		}

		public new bool DesignMode
		{
			get
			{
				return this.designMode;
			}
			set
			{
				if (value != designMode)
				{
					this.designMode	= value;
					OnDesignModeChanged();
				}
			}
		}

		public Color HighlightBackColor
		{
			get
			{
				return this.highBack;
			}
			set
			{
				this.highBack	= value;
			}
		}

		public Legend Legend
		{
			get
			{
				return this.legend;
			}
		}

		public virtual PuzzleType PuzzleType
		{
			get
			{
				return PuzzleType.Generic;
			}
		}

		public int Rows
		{
			get
			{
				return this.rows;
			}
		}

		#endregion
	}
}
