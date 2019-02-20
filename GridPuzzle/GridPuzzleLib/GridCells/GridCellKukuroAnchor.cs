using System;
using System.Collections.Generic;
using System.Drawing;
using System.Windows.Forms;
using GridPuzzleLib.Grids;

namespace GridPuzzleLib.GridCells
{
	public class GridCellKukuroAnchor: GridCellContainer
	{
		#region Methods

		protected internal GridCellKukuroAnchor(GridKukuro grid, int column, int row): base(grid, column, row)
		{
			this.Enabled	= this.Grid.DesignMode;
		}

		private Point[] GetAnchorHighlightPoints(int index)
		{
			Point[]	points	= new Point[]
												{
													new Point(0, 0),
													new Point(this.Width, this.Height),
													index == 0 ?
														new Point(0, this.Height):
														new Point(this.Width, 0)
												};

			return points;
		}

		protected internal void UpdateAnchorCtlsEnabled()
		{
			for (int i = 0; i < 2; i++)
				this.ValueControls[i].Enabled		= (GetCellAtOffset(new Point(i, (i + 1) % 2)) is GridCellKukuroNormal);
		}

		#region Overrides

		protected override void CreateChildControls()
		{
			base.CreateChildControls();

			int	width														= this.Width / 2;
			int	height													= this.Height / 2;

			for (int i = 0; i < 2; i++)
			{
				this.ValueControls.Add(new EditableValue());

				this.ValueControls[i].Location		= new Point(i * width, ((i + 1) % 2) * height);
				this.ValueControls[i].Size				= new Size(width, height);
				this.ValueControls[i].Enabled			= false;
				this.ValueControls[i].TabIndex		= i;
				this.ValueControls[i].Font				= this.Grid.AnchorFont;
				this.ValueControls[i].ForeColor		= this.Grid.AnchorForeColor;
			}

			this.Controls.AddRange(this.ValueControls.ToArray());
		}

		protected internal override void Focus()
		{
			base.Focus();

			if (this.ValueControls[0].Enabled)
				this.ValueControls[0].Focus();
			else if (this.ValueControls[1].Enabled)
				this.ValueControls[1].Focus();
		}

		protected override void OnLostFocus(EventArgs e)
		{
			base.OnLostFocus(e);

			this.Refresh();
		}

		protected override void OnPaint(PaintEventArgs e)
		{
			base.OnPaint(e);

			e.Graphics.SmoothingMode	= System.Drawing.Drawing2D.SmoothingMode.AntiAlias;
			e.Graphics.FillRectangle(new SolidBrush(this.Grid.AnchorBackColor), 0, 0, this.Width, this.Height);

			if (this.Grid.DesignMode && this.ContainsFocus && this.ActiveValueIndex >= 0)
				e.Graphics.FillPolygon(new SolidBrush(this.Grid.HighlightBackColor), GetAnchorHighlightPoints(this.ActiveValueIndex));

			if (this[0].Length > 0 || this[1].Length > 0)
				e.Graphics.DrawLine(new Pen(this.Grid.AnchorForeColor, this.Grid.AnchorDividerWidth), 0, 0, this.Width, this.Height);
		}

		protected internal override void OnParentDesignModeChanged()
		{
			base.OnParentDesignModeChanged();

			this.Enabled	= this.Grid.DesignMode;

			UpdateAnchorCtlsEnabled();
		}

		protected override void OnValueControlLostFocus(EditableValue ctl)
		{
			base.OnValueControlLostFocus(ctl);

			if (this.ContainsFocus)
				this.Refresh();
		}

		protected internal override void UpdateChildControls()
		{
			base.UpdateChildControls();

			int	width														= this.Width / 2;
			int	height													= this.Height / 2;

			for (int i = 0; i < 2; i++)
			{
				this.ValueControls[i].Location		= new Point(i * width, ((i + 1) % 2) * height);
				this.ValueControls[i].Size				= new Size(width, height);
				this.ValueControls[i].Font				= this.Grid.AnchorFont;
				this.ValueControls[i].ForeColor		= this.Grid.AnchorForeColor;
			}
		}

		#endregion

		#endregion

		#region Properties

		public new GridKukuro Grid
		{
			get
			{
				return (GridKukuro)base.Grid;
			}
		}

		protected override bool ShouldReset
		{
			get
			{
				return this.Grid.DesignMode;
			}
		}

		public override string TypeString
		{
			get
			{
				return GridCellKukuroType.Anchor.ToString();
			}
		}

		#endregion
	}
}
