namespace GridPuzzleLib.Grids
{
	partial class GridKukuro
	{
		private System.Windows.Forms.ContextMenuStrip mnuCellType;
		private System.Windows.Forms.ToolStripMenuItem mnuNormal;
		private System.Windows.Forms.ToolStripMenuItem mnuAnchor;
		private System.Windows.Forms.ToolStripMenuItem mnuBlank;

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
			this.mnuCellType = new System.Windows.Forms.ContextMenuStrip(this.components);
			this.mnuNormal = new System.Windows.Forms.ToolStripMenuItem();
			this.mnuAnchor = new System.Windows.Forms.ToolStripMenuItem();
			this.mnuBlank = new System.Windows.Forms.ToolStripMenuItem();
			this.mnuCellType.SuspendLayout();
			this.SuspendLayout();
			// 
			// mnuCellType
			// 
			this.mnuCellType.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mnuNormal,
            this.mnuAnchor,
            this.mnuBlank});
			this.mnuCellType.Name = "mnuCellType";
			this.mnuCellType.Size = new System.Drawing.Size(120, 70);
			this.mnuCellType.Opening += new System.ComponentModel.CancelEventHandler(this.mnuCellType_Opening);
			// 
			// mnuNormal
			// 
			this.mnuNormal.Name = "mnuNormal";
			this.mnuNormal.Size = new System.Drawing.Size(119, 22);
			this.mnuNormal.Text = "&Normal";
			this.mnuNormal.Click += new System.EventHandler(this.mnuType_Click);
			// 
			// mnuAnchor
			// 
			this.mnuAnchor.Name = "mnuAnchor";
			this.mnuAnchor.Size = new System.Drawing.Size(119, 22);
			this.mnuAnchor.Text = "&Anchor";
			this.mnuAnchor.Click += new System.EventHandler(this.mnuType_Click);
			// 
			// mnuBlank
			// 
			this.mnuBlank.Name = "mnuBlank";
			this.mnuBlank.Size = new System.Drawing.Size(119, 22);
			this.mnuBlank.Text = "&Blank";
			this.mnuBlank.Click += new System.EventHandler(this.mnuType_Click);
			this.mnuCellType.ResumeLayout(false);
			this.ResumeLayout(false);

		}

		#endregion

	}
}
