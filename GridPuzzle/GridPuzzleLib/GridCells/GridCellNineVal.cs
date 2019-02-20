using System;
using System.Collections.Generic;
using System.Drawing;
using System.Windows.Forms;
using System.Xml;
using GridPuzzleLib.Grids;

namespace GridPuzzleLib.GridCells
{
	public abstract class GridCellNineVal: GridCellContainer
	{
		#region Constants

		private static readonly int[]	DestUp		= new int[] { 6, 7, 8, 0, 0, 2, 3, 1, 5};
		private static readonly int[] DestDown	= new int[] { 3, 7, 5, 6, 0, 8, 0, 1, 2 };
		private static readonly int[] DestLeft	= new int[] { 2, 0, 1, 5, 0, 3, 8, 6, 7 };
		private static readonly int[] DestRight	= new int[] { 1, 2, 0, 5, 0, 3, 7, 8, 6 };

		#endregion

		#region Methods

		protected internal GridCellNineVal(GridSmallVal grid, int column, int row): base(grid, column, row)
		{
		}

		private bool HandleNav(Keys keys)
		{
			bool	handled	= false;

			int		index		= this.ActiveValueIndex;

			if (this.MiniValsDisplayed && index >= 0 && index != 4)
			{
				int[]	dest	= null;
				switch (keys)
				{
					case Keys.Up:
						dest	= DestUp;
						break;
					case Keys.Down:
						dest	= DestDown;
						break;
					case Keys.Left:
						dest	= DestLeft;
						break;
					case Keys.Right:
						dest	= DestRight;
						break;
				}

				if (dest != null)
				{
					this.ValueControls[dest[index]].Focus();

					handled	= true;
				}
			}

			return handled;
		}

		protected void SetMiniValsActive(bool newValue, bool focus)
		{
			this.ValueControls[4].Enabled	= !newValue;

			if (focus)
			{
				if (newValue)
					this.ValueControls[0].Focus();
				else
					this.ValueControls[4].Focus();
			}
		}

		protected void SetMiniValsDisplayed(bool newValue)
		{
			for (int i = 0; i < this.ValueControls.Count; i++)
			{
				if (i != 4)
				{
					this.ValueControls[i].Enabled	= newValue;
					this.ValueControls[i].Visible	= newValue;
				}
			}

			if (MiniValsDisplayed)
				this[4]													= String.Empty;
			else
			{
				this.ValueControls[4].Enabled		= true;
				this.ValueControls[4].Visible		= true;
			}
		}

		#region Overrides

		protected override void CreateChildControls()
		{
			base.CreateChildControls();

			int	width															= this.Width / 3;
			int	height														= this.Height / 3;

			for (int i = 0; i < 9; i++)
			{
				this.ValueControls.Add(new EditableValue());

				if (i == 4)
				{
					this.ValueControls[i].TabIndex		= 0;
					this.ValueControls[i].Location		= new Point(0, 0);
					this.ValueControls[i].Size				= new Size(this.Width, this.Height);
				}
				else
				{
					this.ValueControls[i].TabIndex		= i + 1;
					this.ValueControls[i].Location		= new Point((i % 3) * width, (i / 3) * height);
					this.ValueControls[i].Size				= new Size(width, height);
					this.ValueControls[i].Enabled			= false;
					this.ValueControls[i].Visible			= false;
				}
			}

			this.Controls.AddRange(this.ValueControls.ToArray());
		}

		protected internal override void Focus()
		{
			base.Focus();

			if (this.ValueControls[4].Enabled)
				this.ValueControls[4].Focus();
		}

		protected override void OnGotFocus(EventArgs e)
		{
			base.OnGotFocus(e);

			this.ValueControls[4].Enabled	= true;

			if (this.MiniValsDisplayed && (this[4].Length > 0 || !this.HasMiniVals))
				this.MiniValsDisplayed	= false;
		}

		protected override void OnKeyDown(KeyEventArgs e)
		{
			if (!this.Grid.DesignMode)
			{
				if (HandleNav(e.KeyData))
					e.Handled	= true;
				else
				{
					switch (e.KeyData)
					{
						case Keys.Delete | Keys.Shift:
							this.Reset();

							this.MiniValsActive				= false;
							this.MiniValsDisplayed		= false;

							e.Handled									= true;
							break;
						case Keys.Enter:
						case Keys.Escape:
						case Keys.Space:
							if (this.MiniValsActive || e.KeyData == Keys.Escape)
								this.MiniValsActive			= false;
							else
							{
								this.MiniValsDisplayed	= true;
								this.MiniValsActive			= true;
							}

							e.Handled									= true;
							break;
					}
				}
			}

			base.OnKeyDown(e);
		}

		protected override void OnPaint(PaintEventArgs e)
		{
			base.OnPaint(e);

			int	index	= this.ActiveValueIndex;

			if (index >=0 && index != 4)
			{
				int				width		= this.Width / 3;
				int				height	= this.Height / 3;
				Rectangle	bounds	= new Rectangle((index % 3) * width, (index / 3) * height, width, height);

				e.Graphics.DrawRectangle(new Pen(this.Grid.HighlightBackColor), bounds);
			}
		}

		protected override void OnValueControlGotFocus(EditableValue ctl)
		{
			base.OnValueControlGotFocus(ctl);

			if (this.ActiveValueIndex != 4 && this.ValueControls[4].Enabled)
				this.ValueControls[4].Enabled = false;

			this.Refresh();
		}

		protected override void OnValueControlLostFocus(EditableValue ctl)
		{
			base.OnValueControlLostFocus(ctl);

			if (!this.ContainsFocus && this.MiniValsActive)
				SetMiniValsActive(false, false);
		}

		protected override void OnValueControlValueChanged(EditableValue ctl)
		{
			base.OnValueControlValueChanged(ctl);

			int	index	= this.ValueControls.IndexOf(ctl);
			if (index == 4)
			{
				if (this[4].Length > 0)
				{
					this.MiniValsDisplayed	= false;
					this.Refresh();
				}
				else if (this.HasMiniVals)
				{
					this.MiniValsDisplayed	= true;
					this.Refresh();
				}
			}
		}

		protected internal override void UpdateChildControls()
		{
			base.UpdateChildControls();

			int	width															= this.Width / 3;
			int	height														= this.Height / 3;

			for (int i = 0; i < 9; i++)
			{
				if (i == 4)
				{
					this.ValueControls[i].Location		= new Point(0, 0);
					this.ValueControls[i].Size				= new Size(this.Width, this.Height);
				}
				else
				{
					this.ValueControls[i].Location		= new Point((i % 3) * width, (i / 3) * height);
					this.ValueControls[i].Size				= new Size(width, height);
					this.ValueControls[i].Font				= this.Grid.SmallFont;
				}
			}
		}

		#endregion

		#endregion

		#region Properties

		public new GridSmallVal Grid
		{
			get
			{
				return (GridSmallVal)base.Grid;
			}
		}

		protected internal bool HasMiniVals
		{
			get
			{
				bool	hasMiniVals	= false;

				for (int i = 0; i < this.ValueControls.Count && !hasMiniVals; i++)
				{
					if (i != 4 && this[i].Trim().Length > 0)
						hasMiniVals	= true;
				}

				return hasMiniVals;
			}
		}

		protected internal bool MiniValsActive
		{
			get
			{
				return !this.ValueControls[4].Enabled;
			}
			set
			{
				if (value != MiniValsActive)
					SetMiniValsActive(value, true);
			}
		}

		protected internal bool MiniValsDisplayed
		{
			get
			{
				return this.ValueControls[0].Visible;
			}
			set
			{
				if (value != MiniValsDisplayed)
					SetMiniValsDisplayed(value);
			}
		}

		#endregion
	}
}
