using System;
using System.Collections.Generic;
using System.Drawing;
using System.Windows.Forms;
using System.Xml;
using GridPuzzleLib.GridCells;

namespace GridPuzzleLib.Grids
{
	public partial class LegendYubotu: Legend
	{
		#region Constants

		private static readonly int[]										DefaultShipQuantities	= new int[] { 1, 2, 3, 4 }; 

		private static readonly GridCellYubotuState[][] ShipData							=
			new GridCellYubotuState[][]
			{
				new GridCellYubotuState[] { GridCellYubotuState.Right, GridCellYubotuState.Square, GridCellYubotuState.Square, GridCellYubotuState.Left },
				new GridCellYubotuState[] { GridCellYubotuState.Right, GridCellYubotuState.Square, GridCellYubotuState.Left },
				new GridCellYubotuState[] { GridCellYubotuState.Right, GridCellYubotuState.Left },
				new GridCellYubotuState[] { GridCellYubotuState.Circle }
			};

		#endregion

		#region Member Variables

		private int[]	shipQuantities	= new int[4];

		#endregion

		#region Methods

		public LegendYubotu(GridYubotu grid, XmlElement legendElement): base(grid)
		{
			InitializeComponent();

			if (legendElement == null)
			{
				shipQuantities = DefaultShipQuantities;
			}
			else
			{
				string[]	qtys	= legendElement.Attributes[Strings.XmlNameAttrLegendQuantities].Value.Split(',');
				for (int i = 0; i < ShipQuantities.Length && i < qtys.Length; i++)
					ShipQuantities[i] = int.Parse(qtys[i]);
			}

			UpdateControls();
		}

		private void UpdateControls()
		{
			this.SuspendLayout();
			this.Controls.Clear();
			this.Enabled						= this.DesignMode;

			GridCellYubotu	cell		= null;
			int							maxX		= 0;
			int							maxY		= 0;
			int							row			= 0;

			for (int shipType = 0; shipType < ShipQuantities.Length; shipType++)
			{
				if (ShipQuantities[shipType] > 0 || this.DesignMode)
				{
					int	space						= 0;
					int	y								= row * (Grid.CellHeight + 10);
					int	numToDraw				= this.DesignMode ? 1 : ShipQuantities[shipType];

					if (this.DesignMode)
					{
						NumericUpDown	num	= new NumericUpDown();
						num.Tag						= shipType;
						num.Location			= new Point(0, y);
						num.Minimum				= 0;
						num.Maximum				= 9;
						num.Value					= Math.Max(num.Minimum, Math.Min(num.Maximum, ShipQuantities[row]));
						this.Controls.Add(num);
						num.Font					= new Font(num.Font.FontFamily, (float)(num.Font.Size * 0.7));
						num.Size					= new Size(Grid.CellInnerWidth + 2, Grid.CellInnerHeight);

						space							+= num.Width + 10;
					}

					for (int col = 0; col < numToDraw * ShipData[shipType].Length; col++)
					{
						cell							= new GridCellYubotu(null, col, row);
						cell.Location			= new Point(col * Grid.CellWidth + space, y);
						cell.Size					= new Size(Grid.CellInnerWidth, Grid.CellInnerHeight);
						cell.State				= LegendYubotu.ShipData[shipType][col % ShipData[shipType].Length];

						this.Controls.Add(cell);

						if (cell.State == GridCellYubotuState.Circle || cell.State == GridCellYubotuState.Left)
							space						+= 10;

						if (cell.Location.X > maxX)
							maxX						= cell.Location.X;

						if (y > maxY)
							maxY						= cell.Location.Y;
					}

					row++;
				}
			}

			this.Size								= new Size(maxX + Grid.CellWidth, maxY + Grid.CellHeight);

			this.ResumeLayout(false);
			this.PerformLayout();
		}

		#region Overrides

		protected internal override XmlElement GetXml(XmlDocument xmlDoc)
		{
			XmlElement		legendElement	= base.GetXml(xmlDoc);

			string[]			qtys					= new string[ShipQuantities.Length];
			for (int i = 0; i < ShipQuantities.Length; i++)
				qtys[i]										= ShipQuantities[i].ToString();

			XmlAttribute	attrib				= xmlDoc.CreateAttribute(Strings.XmlNameAttrLegendQuantities);
			attrib.Value								= String.Join(",", qtys);
			legendElement.Attributes.Append(attrib);

			return legendElement;
		}

		protected override void OnDesignModeChanged()
		{
			base.OnDesignModeChanged();

			if (!this.DesignMode)
			{
				foreach (Control ctl in this.Controls)
				{
					if (ctl is NumericUpDown)
						ShipQuantities[(int)ctl.Tag]	= Convert.ToInt32(((NumericUpDown)ctl).Value);
				}
			}

			UpdateControls();
		}

		#endregion

		#endregion

		#region Properties

		public int[] ShipQuantities
		{
			get
			{
				return shipQuantities;
			}
		}

		#endregion
	}
}
