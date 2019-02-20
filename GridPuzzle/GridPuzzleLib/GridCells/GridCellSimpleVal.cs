using System;
using System.Drawing;
using System.Windows.Forms;
using System.Xml;
using GridPuzzleLib.Grids;

namespace GridPuzzleLib.GridCells
{
	public abstract class GridCellSimpleVal: GridCellContainer
	{
		#region Methods

		public GridCellSimpleVal(Grid grid, int column, int row, string val): base(grid, column, row)
		{
			this.Value	= val;
		}

		#region Overrides

		protected override void CreateChildControls()
		{
			base.CreateChildControls();

			this.ValueControls.Add(new EditableValue());

			this.ValueControls[0].TabIndex	= 0;
			this.ValueControls[0].Location	= new Point(0, 0);
			this.ValueControls[0].Size			= new Size(this.Width, this.Height);

			this.Controls.Add(this.ValueControls[0]);
		}

		protected internal override void Focus()
		{
			base.Focus();

			this.ValueControls[0].Focus();
		}

		protected internal override XmlElement GetXml(XmlDocument xmlDoc)
		{
			XmlElement		element	= base.GetXml(xmlDoc);

			element.RemoveAttribute(Strings.XmlNameAttrCellValues);

			XmlAttribute	attrib	= xmlDoc.CreateAttribute(Strings.XmlNameAttrCellValue);
			attrib.Value					= this.Value.ToString();
			element.Attributes.Append(attrib);

			return element;
		}

		protected internal override void UpdateChildControls()
		{
			base.UpdateChildControls();

			this.ValueControls[0].Location	= new Point(0, 0);
			this.ValueControls[0].Size			= new Size(this.Width, this.Height);
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

		public string Value
		{
			get
			{
				return this[0];
			}
			set
			{
				this[0]	= value;
			}
		}

		#endregion
	}
}
