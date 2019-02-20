using GridPuzzleLib.Grids;

namespace GridPuzzleLib.GridCells
{
	public class GridCellBlank: GridCell
	{
		#region Methods

		public GridCellBlank(Grid grid, int column, int row): base(grid, column, row, GridCellType.Blank)
		{
			this.Enabled	= this.Grid.DesignMode;
		}

		#region Overrides

		protected internal override void OnParentDesignModeChanged()
		{
			base.OnParentDesignModeChanged();

			this.Enabled	= this.Grid.DesignMode;
		}

		#endregion

		#endregion
	}
}
