namespace GridPuzzleLib.Grids
{
	partial class GridYubotu
	{
		private System.Windows.Forms.ContextMenuStrip mnuLockCell;
		private System.Windows.Forms.ToolStripMenuItem mnuLockWater;
		private System.Windows.Forms.ToolStripMenuItem mnuLockCircle;
		private System.Windows.Forms.ToolStripMenuItem mnuLockLeft;
		private System.Windows.Forms.ToolStripMenuItem mnuLockRight;
		private System.Windows.Forms.ToolStripMenuItem mnuLockUp;
		private System.Windows.Forms.ToolStripMenuItem mnuLockDown;
		private System.Windows.Forms.ToolStripMenuItem mnuLockSquare;
		private System.Windows.Forms.ToolStripMenuItem mnuLockUnknown;

		/// <summary>
		/// Required designer variable.
		/// </summary>
		private System.ComponentModel.IContainer components = null;

		/// <summary>
		/// Clean up any resources being used.
		/// </summary>
		/// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
		protected override void Dispose(bool disposing)
		{
			if (disposing && (components != null))
			{
				components.Dispose();
			}
			base.Dispose(disposing);
		}

		#region Component Designer generated code

		/// <summary>
		/// Required method for Designer support - do not modify 
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{
			this.components = new System.ComponentModel.Container();
			this.mnuLockCell = new System.Windows.Forms.ContextMenuStrip(this.components);
			this.mnuLockUnknown = new System.Windows.Forms.ToolStripMenuItem();
			this.mnuLockWater = new System.Windows.Forms.ToolStripMenuItem();
			this.mnuLockCircle = new System.Windows.Forms.ToolStripMenuItem();
			this.mnuLockLeft = new System.Windows.Forms.ToolStripMenuItem();
			this.mnuLockRight = new System.Windows.Forms.ToolStripMenuItem();
			this.mnuLockUp = new System.Windows.Forms.ToolStripMenuItem();
			this.mnuLockDown = new System.Windows.Forms.ToolStripMenuItem();
			this.mnuLockSquare = new System.Windows.Forms.ToolStripMenuItem();
			this.mnuLockCell.SuspendLayout();
			this.SuspendLayout();
			// 
			// mnuLockCell
			// 
			this.mnuLockCell.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mnuLockUnknown,
            this.mnuLockWater,
            this.mnuLockCircle,
            this.mnuLockLeft,
            this.mnuLockRight,
            this.mnuLockUp,
            this.mnuLockDown,
            this.mnuLockSquare});
			this.mnuLockCell.Name = "mnuCellType";
			this.mnuLockCell.Size = new System.Drawing.Size(144, 180);
			this.mnuLockCell.Opening += new System.ComponentModel.CancelEventHandler(this.mnuLockCell_Opening);
			// 
			// mnuLockUnknown
			// 
			this.mnuLockUnknown.ImageTransparentColor = System.Drawing.Color.White;
			this.mnuLockUnknown.Name = "mnuLockUnknown";
			this.mnuLockUnknown.Size = new System.Drawing.Size(143, 22);
			this.mnuLockUnknown.Text = "&Not Locked";
			this.mnuLockUnknown.Click += new System.EventHandler(this.mnuLock_Click);
			// 
			// mnuLockWater
			// 
			this.mnuLockWater.Image = global::GridPuzzleLib.Properties.Resources.Water;
			this.mnuLockWater.ImageTransparentColor = System.Drawing.Color.White;
			this.mnuLockWater.Name = "mnuLockWater";
			this.mnuLockWater.Size = new System.Drawing.Size(143, 22);
			this.mnuLockWater.Text = "Lock &Water";
			this.mnuLockWater.Click += new System.EventHandler(this.mnuLock_Click);
			// 
			// mnuLockCircle
			// 
			this.mnuLockCircle.Image = global::GridPuzzleLib.Properties.Resources.Circle;
			this.mnuLockCircle.ImageTransparentColor = System.Drawing.Color.White;
			this.mnuLockCircle.Name = "mnuLockCircle";
			this.mnuLockCircle.Size = new System.Drawing.Size(143, 22);
			this.mnuLockCircle.Text = "Lock &Circle";
			this.mnuLockCircle.Click += new System.EventHandler(this.mnuLock_Click);
			// 
			// mnuLockLeft
			// 
			this.mnuLockLeft.Image = global::GridPuzzleLib.Properties.Resources.Left;
			this.mnuLockLeft.ImageTransparentColor = System.Drawing.Color.White;
			this.mnuLockLeft.Name = "mnuLockLeft";
			this.mnuLockLeft.Size = new System.Drawing.Size(143, 22);
			this.mnuLockLeft.Text = "Lock &Left";
			this.mnuLockLeft.Click += new System.EventHandler(this.mnuLock_Click);
			// 
			// mnuLockRight
			// 
			this.mnuLockRight.Image = global::GridPuzzleLib.Properties.Resources.Right;
			this.mnuLockRight.ImageTransparentColor = System.Drawing.Color.White;
			this.mnuLockRight.Name = "mnuLockRight";
			this.mnuLockRight.Size = new System.Drawing.Size(143, 22);
			this.mnuLockRight.Text = "Lock &Right";
			this.mnuLockRight.Click += new System.EventHandler(this.mnuLock_Click);
			// 
			// mnuLockUp
			// 
			this.mnuLockUp.Image = global::GridPuzzleLib.Properties.Resources.Up;
			this.mnuLockUp.ImageTransparentColor = System.Drawing.Color.White;
			this.mnuLockUp.Name = "mnuLockUp";
			this.mnuLockUp.Size = new System.Drawing.Size(143, 22);
			this.mnuLockUp.Text = "Lock &Up";
			this.mnuLockUp.Click += new System.EventHandler(this.mnuLock_Click);
			// 
			// mnuLockDown
			// 
			this.mnuLockDown.Image = global::GridPuzzleLib.Properties.Resources.Down;
			this.mnuLockDown.ImageTransparentColor = System.Drawing.Color.White;
			this.mnuLockDown.Name = "mnuLockDown";
			this.mnuLockDown.Size = new System.Drawing.Size(143, 22);
			this.mnuLockDown.Text = "Lock &Down";
			this.mnuLockDown.Click += new System.EventHandler(this.mnuLock_Click);
			// 
			// mnuLockSquare
			// 
			this.mnuLockSquare.Image = global::GridPuzzleLib.Properties.Resources.Square;
			this.mnuLockSquare.ImageTransparentColor = System.Drawing.Color.White;
			this.mnuLockSquare.Name = "mnuLockSquare";
			this.mnuLockSquare.Size = new System.Drawing.Size(143, 22);
			this.mnuLockSquare.Text = "Lock &Square";
			this.mnuLockSquare.Click += new System.EventHandler(this.mnuLock_Click);
			// 
			// GridYubotu
			// 
			this.BehindColor = System.Drawing.SystemColors.Window;
			this.Name = "GridYubotu";
			this.mnuLockCell.ResumeLayout(false);
			this.ResumeLayout(false);

		}

		#endregion

	}
}
