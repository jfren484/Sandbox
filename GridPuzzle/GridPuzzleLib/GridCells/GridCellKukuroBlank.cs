using GridPuzzleLib.Grids;

namespace GridPuzzleLib.GridCells
{
	public class GridCellKukuroBlank: GridCellBlank
	{
		#region Methods

		public GridCellKukuroBlank(GridKukuro grid, int column, int row): base(grid, column, row)
		{
		}

		#endregion

		#region Properties

		public override string TypeString
		{
			get
			{
				return GridCellKukuroType.Blank.ToString();
			}
		}

		#endregion
	}
}
