using System;
using System.Drawing;
using System.Windows.Forms;

namespace GridPuzzleLib
{
	public partial class EditableValue: UserControl
	{
		#region Private Member Variables

		private string	val					= String.Empty;
		private bool		multiDigit	= true;
		private bool		zeroIsBlank	= false;

		private bool		editing			= false;

		#endregion

		#region Methods

		public EditableValue()
		{
			InitializeComponent();

			this.DoubleBuffered	= true;
		}

		protected virtual void OnValueChanged()
		{
			if (ValueChanged != null)
				ValueChanged(this, EventArgs.Empty);
		}

		#region Overrides

		protected override bool IsInputKey(Keys keyData)
		{
			bool	isInputKey	= base.IsInputKey(keyData);

			if (!isInputKey)
			{
				switch (keyData)
				{
					case Keys.Up:
					case Keys.Down:
					case Keys.Left:
					case Keys.Right:
						isInputKey	= true;
						break;
				}
			}

			return isInputKey;
		}

		protected override void OnLostFocus(EventArgs e)
		{
			base.OnLostFocus(e);

			this.Parent.Invalidate(new Rectangle(this.Location, new Size(this.Width + 1, this.Height + 1)));

			editing	= false;
		}

		protected override void OnKeyDown(KeyEventArgs e)
		{
			switch (e.KeyData)
			{
				case Keys.D0:	case Keys.NumPad0:
				case Keys.D1:	case Keys.NumPad1:
				case Keys.D2:	case Keys.NumPad2:
				case Keys.D3:	case Keys.NumPad3:
				case Keys.D4:	case Keys.NumPad4:
				case Keys.D5:	case Keys.NumPad5:
				case Keys.D6:	case Keys.NumPad6:
				case Keys.D7:	case Keys.NumPad7:
				case Keys.D8:	case Keys.NumPad8:
				case Keys.D9:	case Keys.NumPad9:
					int	keyVal			= e.KeyValue % 48;

					if (editing && this.MultiDigit)
						this.Value		+= keyVal.ToString();
					else
						this.Value		= keyVal.ToString();

					editing					= true;
					e.Handled				= true;
					break;
				case Keys.Back:
					if (this.MultiDigit)
					{
						if (this.Value.Length > 0)
						{
							this.Value	= this.Value.Remove(this.Value.Length - 1);
							editing			= true;
						}

						e.Handled			= true;
					}
					break;
				case Keys.Delete:
					this.Value			= String.Empty;

					e.Handled				= true;
					break;
			}

			base.OnKeyDown(e);
		}

		protected override void OnPaint(PaintEventArgs e)
		{
			base.OnPaint(e);

			HelperFunctions.DrawValue(e.Graphics, this.Font, this.ForeColor, this.ClientRectangle, this.Value);
		}

		#endregion

		#endregion

		#region Events

		public event EventHandler ValueChanged;

		#endregion

		#region Properties

		public bool MultiDigit
		{
			get
			{
				return multiDigit;
			}
			set
			{
				multiDigit	= value;
			}
		}

		public string Value
		{
			get
			{
				return val;
			}
			set
			{
				string	setVal	= value;

				if (this.ZeroIsBlank && setVal.Equals("0"))
					setVal = String.Empty;

				if (setVal != val)
				{
					val	= setVal;

					OnValueChanged();

					this.Refresh();
				}
			}
		}

		public bool ZeroIsBlank
		{
			get
			{
				return zeroIsBlank;
			}
			set
			{
				zeroIsBlank	= value;
			}
		}

		#endregion
	}
}
