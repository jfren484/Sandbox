using System;
using System.Collections.Generic;
using System.Drawing;
using System.Windows.Forms;
using System.Xml;
using GridPuzzleLib.Grids;

namespace GridPuzzleLib.GridCells
{
	public abstract class GridCellContainer: GridCell
	{
		#region Private Member Variables

		private List<EditableValue>	valCtls	= new List<EditableValue>();

		#endregion

		#region Methods

		protected internal GridCellContainer(Grid grid, int column, int row): base(grid, column, row, GridCellType.Container)
		{
			CreateChildControls();

			this.Refresh();
		}

		protected virtual void CreateChildControls()
		{
			this.Controls.Clear();
			valCtls.Clear();
		}

		protected virtual void OnValueControlGotFocus(EditableValue ctl)
		{
			this.Grid.Invalidate(new Rectangle(this.Location.X - 3, this.Location.Y - 3, this.Width + 7, this.Height + 7), true);
		}

		protected virtual void OnValueControlLostFocus(EditableValue ctl)
		{
			if (!this.ContainsFocus)
				this.Grid.Invalidate(new Rectangle(this.Location.X - 3, this.Location.Y - 3, this.Width + 7, this.Height + 7), true);
		}

		protected virtual void OnValueControlValueChanged(EditableValue ctl)
		{
		}

		protected internal virtual void UpdateChildControls()
		{
		}

		#region Overrides

		protected internal override XmlElement GetXml(XmlDocument xmlDoc)
		{
			XmlElement		element	= base.GetXml(xmlDoc);

			XmlAttribute	attrib	= xmlDoc.CreateAttribute(Strings.XmlNameAttrCellValues);
			attrib.Value					= this.ValueList;
			element.Attributes.Append(attrib);

			return element;
		}

		protected override void OnControlAdded(ControlEventArgs e)
		{
			base.OnControlAdded(e);

			e.Control.GotFocus											+= new EventHandler(ValueControl_GotFocus);
			e.Control.KeyDown												+= new KeyEventHandler(ValueControl_KeyDown);
			e.Control.LostFocus											+= new EventHandler(ValueControl_LostFocus);
			((EditableValue)e.Control).ValueChanged	+= new EventHandler(ValueControl_ValueChanged);
		}

		protected override void OnSizeChanged(EventArgs e)
		{
			base.OnSizeChanged(e);

			UpdateChildControls();

			this.Refresh();
		}

		protected internal override void Reset()
		{
			base.Reset();

			if (this.ShouldReset)
			{
				for (int i = 0; i < this.valCtls.Count; i++)
					this[i]	= String.Empty;

				this.Refresh();
			}
		}

		#endregion

		#region Event Handlers

		private void ValueControl_GotFocus(object sender, EventArgs e)
		{
			OnValueControlGotFocus((EditableValue)sender);
		}

		private void ValueControl_KeyDown(object sender, KeyEventArgs e)
		{
			this.OnKeyDown(e);
		}

		private void ValueControl_LostFocus(object sender, EventArgs e)
		{
			OnValueControlLostFocus((EditableValue)sender);
		}

		private void ValueControl_ValueChanged(object sender, EventArgs e)
		{
			OnValueControlValueChanged((EditableValue)sender);
		}

		#endregion

		#endregion

		#region Indexer

		public string this[int index]
		{
			get
			{
				return valCtls[index].Value;
			}
			set
			{
				valCtls[index].Value	= value;
			}
		}

		#endregion

		#region Properties

		protected int ActiveValueIndex
		{
			get
			{
				return valCtls.IndexOf((EditableValue)this.ActiveControl);
			}
		}

		protected abstract bool ShouldReset
		{
			get;
		}

		protected List<EditableValue> ValueControls
		{
			get
			{
				return valCtls;
			}
		}

		private string ValueList
		{
			get
			{
				string[]	strVals	= new string[this.valCtls.Count];

				for (int i = 0; i < strVals.Length; i++)
					strVals[i]			= this[i];

				return String.Join("|", strVals);
			}
		}

		#endregion
	}
}
