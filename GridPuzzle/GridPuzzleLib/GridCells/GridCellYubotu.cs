using System;
using System.Drawing;
using System.Windows.Forms;
using System.Xml;
using GridPuzzleLib.Grids;

namespace GridPuzzleLib.GridCells
{
	public class GridCellYubotu: GridCell
	{
		#region Constants

		private static readonly int	StateCount	= Enum.GetValues(typeof(GridCellYubotuState)).Length;

		#endregion

		#region Private Member Variables

		private GridCellYubotuState	state		= GridCellYubotuState.Unknown;
		private bool								locked	= false;

		#endregion

		#region Methods

		public GridCellYubotu(GridYubotu grid, int column, int row): base(grid, column, row, GridCellType.Container)
		{
		}

		private GridCellYubotuState DetermineOccupiedState()
		{
			GridCellYubotuState	state	= GridCellYubotuState.Circle;

			for (int i = 0; i < CellOffsetPoints.Length && state != GridCellYubotuState.Square; i++)
			{
				if (IsCellOccupied(CellOffsetPoints[i]))
				{
					if (state == GridCellYubotuState.Circle)
						state	= (GridCellYubotuState)(i + (int)GridCellYubotuState.Left);
					else
						state	= GridCellYubotuState.Square;
				}
			}

			return state;
		}

		public void IncState(int incBy)
		{
			if (!this.Grid.DesignMode)
			{
				int									stateAsInt		= Math.Min((int)this.State, (int)GridCellYubotuState.Circle);
				int									newStateAsInt	= (stateAsInt + incBy + 3) % 3;
				GridCellYubotuState newState			= (GridCellYubotuState)newStateAsInt;

				if (newState == GridCellYubotuState.Circle)
					newState	= DetermineOccupiedState();

				this.State												= newState;
			}
		}

		private bool IsCellOccupied(Point offset)
		{
			bool			occupied	= false;

			GridCell	cell			= GetCellAtOffset(offset);

			if (cell != null && cell is GridCellYubotu && ((GridCellYubotu)cell).State >= GridCellYubotuState.Circle)
				occupied								= true;

			return occupied;
		}

		#region Overrides

		protected internal override XmlElement GetXml(XmlDocument xmlDoc)
		{
			XmlElement		element	= base.GetXml(xmlDoc);
			XmlAttribute	attrib;

			attrib								= xmlDoc.CreateAttribute(Strings.XmlNameAttrCellState);
			attrib.Value					= this.State.ToString();
			element.Attributes.Append(attrib);

			if (this.Locked)
			{
				attrib							= xmlDoc.CreateAttribute(Strings.XmlNameAttrCellLocked);
				attrib.Value				= this.Locked.ToString();
				element.Attributes.Append(attrib);
			}

			return element;
		}

		protected override void OnKeyDown(KeyEventArgs e)
		{
			base.OnKeyDown(e);

			switch (e.KeyData)
			{
				case Keys.L:
					if (this.Grid.DesignMode)
					{
						GridCellYubotuState	newState	= (GridCellYubotuState)(((int)this.State + 1 + StateCount) % StateCount);
						if (newState == GridCellYubotuState.Circle)
							newState										= DetermineOccupiedState();
						this.State										= newState;

						this.Locked										= this.State != GridCellYubotuState.Unknown;

						e.Handled											= true;
					}
					break;
				case Keys.Space:
				case Keys.Enter:
					IncState(1);

					e.Handled			= true;
					break;
			}
		}

		protected override void OnMouseDown(MouseEventArgs e)
		{
			base.OnMouseDown(e);

			if (e.Button == MouseButtons.Left)
				IncState(1);
			else if (e.Button == MouseButtons.Right)
				IncState(-1);
		}

		protected override void OnMouseMove(MouseEventArgs e)
		{
			base.OnMouseMove(e);

			if (e.Button == MouseButtons.Left || e.Button == MouseButtons.Right)
			{
				Control	ctl	= this.Grid.GetChildAtPoint(this.Grid.PointToClient(this.PointToScreen(e.Location)));

				if (ctl is GridCellYubotu)
				{
					GridCellYubotu			cell	= (GridCellYubotu)ctl;
					GridCellYubotuState	state	= this.State >= GridCellYubotuState.Circle ? cell.DetermineOccupiedState() : this.State;

					if (!cell.Locked && cell.State != state)
						cell.State							= state;
				}
			}
		}

		protected override void OnPaint(PaintEventArgs e)
		{
			base.OnPaint(e);

			if (this.State >= GridCellYubotuState.Water)
			{
				Color	waterColor	= this.Grid == null ? this.BackColor : this.Grid.WaterColor;
				Color	boatColor		= this.Grid == null ? this.ForeColor : this.Grid.BoatColor;

				e.Graphics.FillRectangle(new SolidBrush(waterColor), 0, 0, this.Width, this.Height);

				if (this.State >= GridCellYubotuState.Circle)
				{
					SolidBrush	boatBrush			= new SolidBrush(boatColor);

					bool				drawCircle		= false;
					bool				drawRectangle	= false;
					Point				location			= Point.Empty;

					switch (this.State)
					{
						case GridCellYubotuState.Circle:
							drawCircle	= true;
							break;
						case GridCellYubotuState.Left:
						case GridCellYubotuState.Right:
						case GridCellYubotuState.Up:
						case GridCellYubotuState.Down:
							int	index			= (int)this.State - (int)GridCellYubotuState.Left;
							location			= new Point(this.Width * CellOffsetPoints[index].X / 2, this.Height * CellOffsetPoints[index].Y / 2);

							drawRectangle	= true;
							drawCircle		= true;
							break;
						case GridCellYubotuState.Square:
							drawRectangle	= true;
							break;
					}

					if (drawRectangle)
						e.Graphics.FillRectangle(boatBrush, new Rectangle(location, this.Size));

					if (drawCircle)
					{
						e.Graphics.SmoothingMode	= System.Drawing.Drawing2D.SmoothingMode.AntiAlias;
						e.Graphics.FillEllipse(boatBrush, 0, 0, this.Width - 1, this.Height - 1);
					}
				}
			}
		}

		protected internal override void OnParentDesignModeChanged()
		{
			base.OnParentDesignModeChanged();

			if (this.Grid.DesignMode)
			{
				if (!this.Enabled)
					this.Enabled	= true;

				if (!this.Locked)
					this.State		= GridCellYubotuState.Unknown;
			}
			else if (this.Locked)
				this.Enabled		= false;
		}

		protected internal override void Reset()
		{
			base.Reset();

			if (this.Grid.DesignMode || !this.Locked)
			{
				this.State	= GridCellYubotuState.Unknown;
				this.Locked	= false;
			}
		}

		#endregion

		#endregion

		#region Properties

		public new GridYubotu Grid
		{
			get
			{
				return (GridYubotu)base.Grid;
			}
		}

		public bool Locked
		{
			get
			{
				return locked;
			}
			set
			{
				if (value != locked)
				{
					this.locked		= value;

					this.Enabled	= this.Grid.DesignMode || !this.locked;
				}
			}
		}

		public GridCellYubotuState State
		{
			get
			{
				return state;
			}
			set
			{
				if (value != this.state)
				{
					bool	oldOcc	= this.state >= GridCellYubotuState.Circle;
					this.state		= value;
					bool	newOcc	= this.state >= GridCellYubotuState.Circle;

					if (this.Grid != null)
						this.Grid.Invalidate(new Rectangle(this.Location.X - 3, this.Location.Y - 3, this.Width + 7, this.Height + 7));
					this.Refresh();

					if (newOcc != oldOcc)
					{
						for (int i = 0; i < CellOffsetPoints.Length; i++)
						{
							if (IsCellOccupied(CellOffsetPoints[i]))
							{
								GridCellYubotu	cell	= (GridCellYubotu)GetCellAtOffset(CellOffsetPoints[i]);
								if (!cell.Locked)
								{
									cell.State					= cell.DetermineOccupiedState();
									cell.Refresh();
								}
							}
						}
					}
				}
			}
		}

		#endregion
	}
}
