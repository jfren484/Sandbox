using GridPuzzleLib.Grids;

namespace GridPuzzleLib.GridCells
{
	public class GridCellYubotuVal: GridCellSimpleVal
	{
		#region Methods

		public GridCellYubotuVal(GridYubotu grid, int column, int row, string val): base(grid, column, row, val)
		{
			this.Enabled	= this.Grid.DesignMode;
		}

		#region Overrides

		protected internal override void OnParentDesignModeChanged()
		{
			base.OnParentDesignModeChanged();

			this.Enabled	= this.Grid.DesignMode;
		}

		protected internal override void Reset()
		{
			base.Reset();

			if (this.Value.Length == 0)
				this.Value	= "0";
		}

		#endregion

		#endregion

		#region Properties

		protected override bool ShouldReset
		{
			get
			{
				return this.Grid.DesignMode;
			}
		}

		#endregion
	}
}
