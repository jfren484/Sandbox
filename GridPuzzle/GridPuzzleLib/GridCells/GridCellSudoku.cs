using System;
using System.Windows.Forms;
using System.Xml;
using GridPuzzleLib.Grids;

namespace GridPuzzleLib.GridCells
{
	public class GridCellSudoku: GridCellNineVal
	{
		#region Private Member Variables

		private bool	locked	= false;

		#endregion

		#region Methods

		protected internal GridCellSudoku(GridSudoku grid, int column, int row): base(grid, column, row)
		{
		}

		#region Overrides

		protected internal override XmlElement GetXml(XmlDocument xmlDoc)
		{
			XmlElement			element	= base.GetXml(xmlDoc);

			if (this.Locked)
			{
				XmlAttribute	attrib	= xmlDoc.CreateAttribute(Strings.XmlNameAttrCellLocked);
				attrib.Value					= this.Locked.ToString();
				element.Attributes.Append(attrib);
			}

			return element;
		}

		protected override void OnKeyDown(KeyEventArgs e)
		{
			if (this.Grid.DesignMode)
			{
				switch (e.KeyData)
				{
					case Keys.L:
						this.Locked	= !this.Locked;

						e.Handled		= true;
						break;
				}
			}

			base.OnKeyDown(e);
		}

		protected internal override void OnParentDesignModeChanged()
		{
			base.OnParentDesignModeChanged();

			if (this.Grid.DesignMode)
			{
				this.Enabled	= true;

				for (int i = 0; i < this.ValueControls.Count; i++)
				{
					if (i != 4)
					{
						this.ValueControls[i].Enabled = false;
						this.ValueControls[i].Visible = false;
					}
				}
			}
			else
			{
				if (this.Locked)
					this.Enabled	= false;
				else
					SetMiniValsDisplayed(this[4].Trim().Length == 0 && HasMiniVals);
			}
		}

		protected internal override void Reset()
		{
			base.Reset();

			if (this.Grid.DesignMode && this.Locked)
				this.Locked	= false;
		}

		#endregion

		#endregion

		#region Properties

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
					locked					= value;

					this.BackColor	= locked ? this.Grid.LockedBackColor : this.Grid.BackColor;
					this.ForeColor	= locked ? this.Grid.LockedForeColor : this.Grid.ForeColor;
					this.Font				= locked ? this.Grid.LockedFont : this.Grid.Font;

					if (!this.Grid.DesignMode)
						this.Enabled	= false;
				}
			}
		}

		public new GridSudoku Grid
		{
			get
			{
				return (GridSudoku)base.Grid;
			}
		}

		protected override bool ShouldReset
		{
			get
			{
				return this.Grid.DesignMode || !this.Locked;
			}
		}

		#endregion
	}
}
