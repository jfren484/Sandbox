using System;
using System.Windows.Forms;
using System.Xml;

namespace GridPuzzleLib.Grids
{
	public partial class Legend: UserControl
	{
		#region Private Member Variables

		private	Grid	grid				= null;
		private	bool	designMode	= false;

		#endregion

		#region Methods

		public Legend(Grid grid)
		{
			this.grid	= grid;

			InitializeComponent();
		}

		protected internal virtual XmlElement GetXml(XmlDocument xmlDoc)
		{
			return xmlDoc.CreateElement(Strings.XmlNameElLegend);
		}

		protected virtual void OnDesignModeChanged()
		{
		}

		#endregion

		#region Properties

		public new bool DesignMode
		{
			get
			{
				return this.designMode;
			}
			set
			{
				if (value != designMode)
				{
					this.designMode	= value;
					OnDesignModeChanged();
				}
			}
		}

		public Grid Grid
		{
			get
			{
				return this.grid;
			}
		}

		#endregion
	}
}
