namespace ColonizationResourceViewer
{
	partial class FormMain
	{
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

		#region Windows Form Designer generated code

		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{
            this.menuMain = new System.Windows.Forms.MenuStrip();
            this.mnuFile = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuFileOpen = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuFileBrowse = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuFileExport = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuFileSep1 = new System.Windows.Forms.ToolStripSeparator();
            this.mnuFileRecent = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuFileSetPal = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuFileSep2 = new System.Windows.Forms.ToolStripSeparator();
            this.mnuFileExit = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuZoom = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuZoomIn = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuZoomOut = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuZoomActual = new System.Windows.Forms.ToolStripMenuItem();
            this.dlgOpen = new System.Windows.Forms.OpenFileDialog();
            this.listEntries = new System.Windows.Forms.ListView();
            this.colImage = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.colWidth = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.colHeight = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.pnlImage = new System.Windows.Forms.Panel();
            this.picBox = new System.Windows.Forms.PictureBox();
            this.dlgOpenPAL = new System.Windows.Forms.OpenFileDialog();
            this.dlgBrowse = new System.Windows.Forms.FolderBrowserDialog();
            this.splitter = new System.Windows.Forms.Splitter();
            this.dlgSaveFolder = new System.Windows.Forms.FolderBrowserDialog();
            this.menuMain.SuspendLayout();
            this.pnlImage.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.picBox)).BeginInit();
            this.SuspendLayout();
            // 
            // menuMain
            // 
            this.menuMain.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mnuFile,
            this.mnuZoom});
            this.menuMain.Location = new System.Drawing.Point(0, 0);
            this.menuMain.Name = "menuMain";
            this.menuMain.Size = new System.Drawing.Size(626, 24);
            this.menuMain.TabIndex = 1;
            // 
            // mnuFile
            // 
            this.mnuFile.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mnuFileOpen,
            this.mnuFileBrowse,
            this.mnuFileExport,
            this.mnuFileSep1,
            this.mnuFileRecent,
            this.mnuFileSetPal,
            this.mnuFileSep2,
            this.mnuFileExit});
            this.mnuFile.Name = "mnuFile";
            this.mnuFile.Size = new System.Drawing.Size(37, 20);
            this.mnuFile.Text = "&File";
            // 
            // mnuFileOpen
            // 
            this.mnuFileOpen.Name = "mnuFileOpen";
            this.mnuFileOpen.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.O)));
            this.mnuFileOpen.Size = new System.Drawing.Size(163, 22);
            this.mnuFileOpen.Text = "&Open";
            this.mnuFileOpen.Click += new System.EventHandler(this.mnuFileOpen_Click);
            // 
            // mnuFileBrowse
            // 
            this.mnuFileBrowse.Name = "mnuFileBrowse";
            this.mnuFileBrowse.Size = new System.Drawing.Size(163, 22);
            this.mnuFileBrowse.Text = "&Browse";
            this.mnuFileBrowse.Click += new System.EventHandler(this.mnuFileBrowse_Click);
            // 
            // mnuFileExport
            // 
            this.mnuFileExport.Enabled = false;
            this.mnuFileExport.Name = "mnuFileExport";
            this.mnuFileExport.Size = new System.Drawing.Size(163, 22);
            this.mnuFileExport.Text = "&Export";
            this.mnuFileExport.Click += new System.EventHandler(this.mnuFileExport_Click);
            // 
            // mnuFileSep1
            // 
            this.mnuFileSep1.Name = "mnuFileSep1";
            this.mnuFileSep1.Size = new System.Drawing.Size(160, 6);
            // 
            // mnuFileRecent
            // 
            this.mnuFileRecent.Name = "mnuFileRecent";
            this.mnuFileRecent.Size = new System.Drawing.Size(163, 22);
            this.mnuFileRecent.Text = "Recent Files";
            // 
            // mnuFileSetPal
            // 
            this.mnuFileSetPal.Name = "mnuFileSetPal";
            this.mnuFileSetPal.Size = new System.Drawing.Size(163, 22);
            this.mnuFileSetPal.Text = "&Set VICEROY.PAL";
            this.mnuFileSetPal.Click += new System.EventHandler(this.mnuFileSetPal_Click);
            // 
            // mnuFileSep2
            // 
            this.mnuFileSep2.Name = "mnuFileSep2";
            this.mnuFileSep2.Size = new System.Drawing.Size(160, 6);
            // 
            // mnuFileExit
            // 
            this.mnuFileExit.Name = "mnuFileExit";
            this.mnuFileExit.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Alt | System.Windows.Forms.Keys.F4)));
            this.mnuFileExit.Size = new System.Drawing.Size(163, 22);
            this.mnuFileExit.Text = "E&xit";
            this.mnuFileExit.Click += new System.EventHandler(this.mnuFileExit_Click);
            // 
            // mnuZoom
            // 
            this.mnuZoom.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mnuZoomIn,
            this.mnuZoomOut,
            this.mnuZoomActual});
            this.mnuZoom.Name = "mnuZoom";
            this.mnuZoom.Size = new System.Drawing.Size(51, 20);
            this.mnuZoom.Text = "&Zoom";
            // 
            // mnuZoomIn
            // 
            this.mnuZoomIn.Name = "mnuZoomIn";
            this.mnuZoomIn.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.Oemplus)));
            this.mnuZoomIn.Size = new System.Drawing.Size(222, 22);
            this.mnuZoomIn.Text = "Zoom &In";
            this.mnuZoomIn.Click += new System.EventHandler(this.mnuZoomIn_Click);
            // 
            // mnuZoomOut
            // 
            this.mnuZoomOut.Name = "mnuZoomOut";
            this.mnuZoomOut.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.OemMinus)));
            this.mnuZoomOut.Size = new System.Drawing.Size(222, 22);
            this.mnuZoomOut.Text = "Zoom &Out";
            this.mnuZoomOut.Click += new System.EventHandler(this.mnuZoomOut_Click);
            // 
            // mnuZoomActual
            // 
            this.mnuZoomActual.Name = "mnuZoomActual";
            this.mnuZoomActual.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.Space)));
            this.mnuZoomActual.Size = new System.Drawing.Size(222, 22);
            this.mnuZoomActual.Text = "&Actual Size";
            this.mnuZoomActual.Click += new System.EventHandler(this.mnuZoomActual_Click);
            // 
            // dlgOpen
            // 
            this.dlgOpen.Filter = "Supported MADSPACK Files (*.SS, *.PIK)|*.SS;*.PIK|All Files (*.*)|*.*";
            // 
            // listEntries
            // 
            this.listEntries.Activation = System.Windows.Forms.ItemActivation.OneClick;
            this.listEntries.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.colImage,
            this.colWidth,
            this.colHeight});
            this.listEntries.Dock = System.Windows.Forms.DockStyle.Left;
            this.listEntries.FullRowSelect = true;
            this.listEntries.HideSelection = false;
            this.listEntries.Location = new System.Drawing.Point(0, 24);
            this.listEntries.MultiSelect = false;
            this.listEntries.Name = "listEntries";
            this.listEntries.Size = new System.Drawing.Size(184, 340);
            this.listEntries.TabIndex = 3;
            this.listEntries.UseCompatibleStateImageBehavior = false;
            this.listEntries.View = System.Windows.Forms.View.Details;
            this.listEntries.SelectedIndexChanged += new System.EventHandler(this.listEntries_SelectedIndexChanged);
            // 
            // colImage
            // 
            this.colImage.Text = "Image";
            // 
            // colWidth
            // 
            this.colWidth.Text = "Width";
            this.colWidth.Width = 50;
            // 
            // colHeight
            // 
            this.colHeight.Text = "Height";
            this.colHeight.Width = 50;
            // 
            // pnlImage
            // 
            this.pnlImage.AutoScroll = true;
            this.pnlImage.Controls.Add(this.picBox);
            this.pnlImage.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pnlImage.Location = new System.Drawing.Point(184, 24);
            this.pnlImage.Name = "pnlImage";
            this.pnlImage.Size = new System.Drawing.Size(442, 340);
            this.pnlImage.TabIndex = 4;
            // 
            // picBox
            // 
            this.picBox.Location = new System.Drawing.Point(3, 3);
            this.picBox.Name = "picBox";
            this.picBox.Size = new System.Drawing.Size(102, 94);
            this.picBox.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.picBox.TabIndex = 0;
            this.picBox.TabStop = false;
            // 
            // dlgOpenPAL
            // 
            this.dlgOpenPAL.Filter = "Colonization Default Palette (VICEROY.PAL)|VICEROY.PAL";
            // 
            // dlgBrowse
            // 
            this.dlgBrowse.Description = "yada yada";
            this.dlgBrowse.ShowNewFolderButton = false;
            // 
            // splitter
            // 
            this.splitter.Location = new System.Drawing.Point(184, 24);
            this.splitter.Name = "splitter";
            this.splitter.Size = new System.Drawing.Size(3, 340);
            this.splitter.TabIndex = 5;
            this.splitter.TabStop = false;
            // 
            // FormMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(626, 364);
            this.Controls.Add(this.splitter);
            this.Controls.Add(this.pnlImage);
            this.Controls.Add(this.listEntries);
            this.Controls.Add(this.menuMain);
            this.Name = "FormMain";
            this.Text = "Colonization Resource Viewer";
            this.menuMain.ResumeLayout(false);
            this.menuMain.PerformLayout();
            this.pnlImage.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.picBox)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

		}

		#endregion

		private System.Windows.Forms.MenuStrip menuMain;
		private System.Windows.Forms.ToolStripMenuItem mnuFile;
		private System.Windows.Forms.ToolStripMenuItem mnuFileOpen;
		private System.Windows.Forms.ToolStripSeparator mnuFileSep1;
		private System.Windows.Forms.ToolStripMenuItem mnuFileExit;
		private System.Windows.Forms.OpenFileDialog dlgOpen;
		private System.Windows.Forms.ListView listEntries;
		private System.Windows.Forms.Panel pnlImage;
		private System.Windows.Forms.PictureBox picBox;
		private System.Windows.Forms.ColumnHeader colImage;
		private System.Windows.Forms.ColumnHeader colWidth;
		private System.Windows.Forms.ColumnHeader colHeight;
		private System.Windows.Forms.ToolStripSeparator mnuFileSep2;
		private System.Windows.Forms.ToolStripMenuItem mnuFileRecent;
		private System.Windows.Forms.ToolStripMenuItem mnuZoom;
		private System.Windows.Forms.ToolStripMenuItem mnuZoomIn;
		private System.Windows.Forms.ToolStripMenuItem mnuZoomOut;
		private System.Windows.Forms.ToolStripMenuItem mnuZoomActual;
		private System.Windows.Forms.OpenFileDialog dlgOpenPAL;
		private System.Windows.Forms.ToolStripMenuItem mnuFileSetPal;
		private System.Windows.Forms.ToolStripMenuItem mnuFileBrowse;
		private System.Windows.Forms.FolderBrowserDialog dlgBrowse;
		private System.Windows.Forms.Splitter splitter;
        private System.Windows.Forms.ToolStripMenuItem mnuFileExport;
        private System.Windows.Forms.FolderBrowserDialog dlgSaveFolder;
    }
}

