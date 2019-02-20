using System;
using System.Drawing;
using GridPuzzleLib.Grids;

namespace GridPuzzleLib.GridCells
{
	public class GridCellKukuroNormal: GridCellNineVal
	{
		#region Methods

		protected internal GridCellKukuroNormal(GridKukuro grid, int column, int row): base(grid, column, row)
		{
		}

		#region Overrides

		protected override void CreateChildControls()
		{
			base.CreateChildControls();

			foreach (EditableValue valCtl in this.ValueControls)
			{
				valCtl.MultiDigit = false;

				if (this.ValueControls.IndexOf(valCtl) != 4)
					valCtl.Font			= this.Grid.SmallFont;
			}
		}

		protected internal override void OnParentDesignModeChanged()
		{
			base.OnParentDesignModeChanged();

			if (this.Grid.DesignMode)
			{
				foreach (EditableValue valCtl in this.ValueControls)
				{
					valCtl.Enabled	= false;
					valCtl.Visible	= false;
				}
			}
			else
				SetMiniValsDisplayed(this[4].Trim().Length == 0 && HasMiniVals);
		}

		#endregion

		#endregion

		#region Properties

		public GridCellKukuroAnchor AnchorLeft
		{
			get
			{
				GridCell	cell	= this;

				while (cell != null && !(cell is GridCellKukuroAnchor))
					cell	= cell.GetCellAtOffset(new Point(-1, 0), false);

				return (GridCellKukuroAnchor)cell;
			}
		}

		public GridCellKukuroAnchor AnchorUp
		{
			get
			{
				GridCell	cell	= this;

				while (cell != null && !(cell is GridCellKukuroAnchor))
					cell	= cell.GetCellAtOffset(new Point(0, -1), false);

				return (GridCellKukuroAnchor)cell;
			}
		}

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
				return true;
			}
		}

		public override string TypeString
		{
			get
			{
				return GridCellKukuroType.Normal.ToString();
			}
		}

		#endregion
	}
}
