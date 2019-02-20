namespace GridPuzzleLib.Grids
{
	partial class GridSudoku
	{
		private System.Windows.Forms.ContextMenuStrip mnuLockCell;
		private System.Windows.Forms.ToolStripMenuItem mnuLock;

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
			this.mnuLock = new System.Windows.Forms.ToolStripMenuItem();
			this.mnuLockCell.SuspendLayout();
			this.SuspendLayout();
			// 
			// mnuLockCell
			// 
			this.mnuLockCell.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mnuLock});
			this.mnuLockCell.Name = "mnuCellType";
			this.mnuLockCell.Size = new System.Drawing.Size(120, 70);
			this.mnuLockCell.Opening += new System.ComponentModel.CancelEventHandler(this.mnuCellLock_Opening);
			// 
			// mnuLock
			// 
			this.mnuLock.Name = "mnuLock";
			this.mnuLock.Size = new System.Drawing.Size(119, 22);
			this.mnuLock.Text = "&Lock";
			this.mnuLock.Click += new System.EventHandler(this.mnuLock_Click);
			this.mnuLockCell.ResumeLayout(false);
			this.ResumeLayout(false);

		}

		#endregion

	}
}
