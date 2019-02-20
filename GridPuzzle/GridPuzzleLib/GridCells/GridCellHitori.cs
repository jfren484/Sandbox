using System;
using System.Drawing;
using System.Windows.Forms;
using System.Xml;
using GridPuzzleLib.Grids;

namespace GridPuzzleLib.GridCells
{
	public class GridCellHitori: GridCellSimpleVal
	{
		#region Constants

		private static readonly int	StateCount	= Enum.GetValues(typeof(GridCellHitoriState)).Length;

		#endregion

		#region Private Member Variables

		private GridCellHitoriState	state	= GridCellHitoriState.Normal;

		#endregion

		#region Methods

		public GridCellHitori(GridHitori grid, int column, int row, string val): base(grid, column, row, val)
		{
		}

		public void IncState(int incBy)
		{
			this.State	= (GridCellHitoriState)(((int)this.State + incBy + StateCount) % StateCount);
		}

		#region Overrides

		protected override void CreateChildControls()
		{
			base.CreateChildControls();

			this.ValueControls[0].Enabled	= false;
		}

		protected internal override XmlElement GetXml(XmlDocument xmlDoc)
		{
			XmlElement		element	= base.GetXml(xmlDoc);

			XmlAttribute	attrib	= xmlDoc.CreateAttribute(Strings.XmlNameAttrCellState);
			attrib.Value					= this.State.ToString();
			element.Attributes.Append(attrib);

			return element;
		}

		protected override void OnKeyDown(KeyEventArgs e)
		{
			base.OnKeyDown(e);

			switch (e.KeyData)
			{
				case Keys.Space:
				case Keys.Enter:
					IncState(1);
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

		protected override void OnPaint(PaintEventArgs e)
		{
			base.OnPaint(e);

			if (!this.Grid.DesignMode)
			{
				if (this.State == GridCellHitoriState.Shaded)
					e.Graphics.FillRectangle(new SolidBrush(this.Grid.ShadeColor), 0, 0, this.Width, this.Height);
				else if (this.State == GridCellHitoriState.Circled)
				{
					e.Graphics.SmoothingMode	= System.Drawing.Drawing2D.SmoothingMode.AntiAlias;
					e.Graphics.DrawEllipse(new Pen(this.ForeColor, this.Grid.CirclePenWidth), 1, 1, this.Width - 3, this.Height - 3);
				}

				SizeF	size	= HelperFunctions.MeasureDisplayString(e.Graphics, this.Value, this.Font);
				float	x			= (this.Width - size.Width) / 2;
				float	y			= (this.Height - size.Height) / 2;

				e.Graphics.DrawString(this.Value, this.Font, new SolidBrush(this.ForeColor), x, y);
			}
		}

		protected internal override void OnParentDesignModeChanged()
		{
			base.OnParentDesignModeChanged();

			this.ValueControls[0].Enabled	= this.Grid.DesignMode;
		}

		protected internal override void Reset()
		{
			base.Reset();

			this.State	= GridCellHitoriState.Normal;
		}

		#endregion

		#endregion

		#region Properties

		public new GridHitori Grid
		{
			get
			{
				return (GridHitori)base.Grid;
			}
		}

		public GridCellHitoriState State
		{
			get
			{
				return state;
			}
			set
			{
				if (value != this.state)
				{
					this.state	= value;
					this.Grid.Invalidate(new Rectangle(this.Location.X - 3, this.Location.Y - 3, this.Width + 7, this.Height + 7));
					this.Refresh();
				}
			}
		}

		#endregion
	}
}
