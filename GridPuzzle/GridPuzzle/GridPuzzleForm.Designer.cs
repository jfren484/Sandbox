namespace GridPuzzle
{
	partial class GridPuzzleForm
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
			this.mnuMain = new System.Windows.Forms.MenuStrip();
			this.mnuFile = new System.Windows.Forms.ToolStripMenuItem();
			this.mnuFileNew = new System.Windows.Forms.ToolStripMenuItem();
			this.mnuFileNewHitori = new System.Windows.Forms.ToolStripMenuItem();
			this.mnuFileNewKukuro = new System.Windows.Forms.ToolStripMenuItem();
			this.mnuFileNewSudoku = new System.Windows.Forms.ToolStripMenuItem();
			this.mnuFileNewYubotu = new System.Windows.Forms.ToolStripMenuItem();
			this.mnuFileOpen = new System.Windows.Forms.ToolStripMenuItem();
			this.mnuFileSave = new System.Windows.Forms.ToolStripMenuItem();
			this.mnuFileSaveAs = new System.Windows.Forms.ToolStripMenuItem();
			this.mnuFileLine = new System.Windows.Forms.ToolStripSeparator();
			this.mnuFileExit = new System.Windows.Forms.ToolStripMenuItem();
			this.mnuPuzzle = new System.Windows.Forms.ToolStripMenuItem();
			this.mnuPuzzleDesign = new System.Windows.Forms.ToolStripMenuItem();
			this.mnuPuzzleReset = new System.Windows.Forms.ToolStripMenuItem();
			this.mnuPuzzleLegend = new System.Windows.Forms.ToolStripMenuItem();
			this.dlgSave = new System.Windows.Forms.SaveFileDialog();
			this.dlgOpen = new System.Windows.Forms.OpenFileDialog();
			this.picThumbnail = new System.Windows.Forms.PictureBox();
			this.mnuMain.SuspendLayout();
			((System.ComponentModel.ISupportInitialize)(this.picThumbnail)).BeginInit();
			this.SuspendLayout();
			// 
			// mnuMain
			// 
			this.mnuMain.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mnuFile,
            this.mnuPuzzle});
			this.mnuMain.Location = new System.Drawing.Point(0, 0);
			this.mnuMain.Name = "mnuMain";
			this.mnuMain.Size = new System.Drawing.Size(492, 24);
			this.mnuMain.TabIndex = 0;
			// 
			// mnuFile
			// 
			this.mnuFile.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mnuFileNew,
            this.mnuFileOpen,
            this.mnuFileSave,
            this.mnuFileSaveAs,
            this.mnuFileLine,
            this.mnuFileExit});
			this.mnuFile.Name = "mnuFile";
			this.mnuFile.Size = new System.Drawing.Size(35, 20);
			this.mnuFile.Text = "&File";
			// 
			// mnuFileNew
			// 
			this.mnuFileNew.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mnuFileNewHitori,
            this.mnuFileNewKukuro,
            this.mnuFileNewSudoku,
            this.mnuFileNewYubotu});
			this.mnuFileNew.Name = "mnuFileNew";
			this.mnuFileNew.Size = new System.Drawing.Size(136, 22);
			this.mnuFileNew.Text = "&New";
			// 
			// mnuFileNewHitori
			// 
			this.mnuFileNewHitori.Name = "mnuFileNewHitori";
			this.mnuFileNewHitori.Size = new System.Drawing.Size(120, 22);
			this.mnuFileNewHitori.Text = "&Hitori";
			this.mnuFileNewHitori.Click += new System.EventHandler(this.mnuFileNewHitori_Click);
			// 
			// mnuFileNewKukuro
			// 
			this.mnuFileNewKukuro.Name = "mnuFileNewKukuro";
			this.mnuFileNewKukuro.Size = new System.Drawing.Size(120, 22);
			this.mnuFileNewKukuro.Text = "&Kukuro";
			this.mnuFileNewKukuro.Click += new System.EventHandler(this.mnuFileNewKukuro_Click);
			// 
			// mnuFileNewSudoku
			// 
			this.mnuFileNewSudoku.Name = "mnuFileNewSudoku";
			this.mnuFileNewSudoku.Size = new System.Drawing.Size(120, 22);
			this.mnuFileNewSudoku.Text = "&Sudoku";
			this.mnuFileNewSudoku.Click += new System.EventHandler(this.mnuFileNewSudoku_Click);
			// 
			// mnuFileNewYubotu
			// 
			this.mnuFileNewYubotu.Name = "mnuFileNewYubotu";
			this.mnuFileNewYubotu.Size = new System.Drawing.Size(120, 22);
			this.mnuFileNewYubotu.Text = "&Yubotu";
			this.mnuFileNewYubotu.Click += new System.EventHandler(this.mnuFileNewYubotu_Click);
			// 
			// mnuFileOpen
			// 
			this.mnuFileOpen.Name = "mnuFileOpen";
			this.mnuFileOpen.Size = new System.Drawing.Size(136, 22);
			this.mnuFileOpen.Text = "&Open...";
			this.mnuFileOpen.Click += new System.EventHandler(this.mnuFileOpen_Click);
			// 
			// mnuFileSave
			// 
			this.mnuFileSave.Enabled = false;
			this.mnuFileSave.Name = "mnuFileSave";
			this.mnuFileSave.Size = new System.Drawing.Size(136, 22);
			this.mnuFileSave.Text = "&Save";
			this.mnuFileSave.Click += new System.EventHandler(this.mnuFileSave_Click);
			// 
			// mnuFileSaveAs
			// 
			this.mnuFileSaveAs.Enabled = false;
			this.mnuFileSaveAs.Name = "mnuFileSaveAs";
			this.mnuFileSaveAs.Size = new System.Drawing.Size(136, 22);
			this.mnuFileSaveAs.Text = "Save &As...";
			this.mnuFileSaveAs.Click += new System.EventHandler(this.mnuFileSaveAs_Click);
			// 
			// mnuFileLine
			// 
			this.mnuFileLine.Name = "mnuFileLine";
			this.mnuFileLine.Size = new System.Drawing.Size(133, 6);
			// 
			// mnuFileExit
			// 
			this.mnuFileExit.Name = "mnuFileExit";
			this.mnuFileExit.Size = new System.Drawing.Size(136, 22);
			this.mnuFileExit.Text = "E&xit";
			this.mnuFileExit.Click += new System.EventHandler(this.mnuFileExit_Click);
			// 
			// mnuPuzzle
			// 
			this.mnuPuzzle.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mnuPuzzleDesign,
            this.mnuPuzzleReset,
            this.mnuPuzzleLegend});
			this.mnuPuzzle.Name = "mnuPuzzle";
			this.mnuPuzzle.Size = new System.Drawing.Size(49, 20);
			this.mnuPuzzle.Text = "&Puzzle";
			// 
			// mnuPuzzleDesign
			// 
			this.mnuPuzzleDesign.CheckOnClick = true;
			this.mnuPuzzleDesign.Enabled = false;
			this.mnuPuzzleDesign.Name = "mnuPuzzleDesign";
			this.mnuPuzzleDesign.Size = new System.Drawing.Size(152, 22);
			this.mnuPuzzleDesign.Text = "&Design";
			this.mnuPuzzleDesign.CheckedChanged += new System.EventHandler(this.mnuPuzzleDesign_CheckedChanged);
			// 
			// mnuPuzzleReset
			// 
			this.mnuPuzzleReset.Enabled = false;
			this.mnuPuzzleReset.Name = "mnuPuzzleReset";
			this.mnuPuzzleReset.Size = new System.Drawing.Size(152, 22);
			this.mnuPuzzleReset.Text = "&Reset";
			this.mnuPuzzleReset.Click += new System.EventHandler(this.mnuPuzzleReset_Click);
			// 
			// mnuPuzzleLegend
			// 
			this.mnuPuzzleLegend.CheckOnClick = true;
			this.mnuPuzzleLegend.Enabled = false;
			this.mnuPuzzleLegend.Name = "mnuPuzzleLegend";
			this.mnuPuzzleLegend.Size = new System.Drawing.Size(152, 22);
			this.mnuPuzzleLegend.Text = "&Legend";
			this.mnuPuzzleLegend.CheckedChanged += new System.EventHandler(this.mnuPuzzleLegend_CheckedChanged);
			// 
			// dlgSave
			// 
			this.dlgSave.DefaultExt = "puz";
			this.dlgSave.Filter = "Puzzle Files (*.puz)|*.puz";
			// 
			// dlgOpen
			// 
			this.dlgOpen.DefaultExt = "*.puz";
			this.dlgOpen.Filter = "Puzzle Files (*.puz)|*.puz|All Files (*.*)|*.*";
			// 
			// picThumbnail
			// 
			this.picThumbnail.Location = new System.Drawing.Point(0, 0);
			this.picThumbnail.Name = "picThumbnail";
			this.picThumbnail.Size = new System.Drawing.Size(100, 50);
			this.picThumbnail.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
			this.picThumbnail.TabIndex = 1;
			this.picThumbnail.TabStop = false;
			this.picThumbnail.Visible = false;
			// 
			// GridPuzzleForm
			// 
			this.AllowDrop = true;
			this.AutoScaleDimensions = new System.Drawing.SizeF(18F, 39F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.ClientSize = new System.Drawing.Size(492, 366);
			this.Controls.Add(this.mnuMain);
			this.Controls.Add(this.picThumbnail);
			this.Font = new System.Drawing.Font("Tahoma", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.KeyPreview = true;
			this.MainMenuStrip = this.mnuMain;
			this.Margin = new System.Windows.Forms.Padding(9);
			this.Name = "GridPuzzleForm";
			this.Text = "Grid Puzzle";
			this.mnuMain.ResumeLayout(false);
			this.mnuMain.PerformLayout();
			((System.ComponentModel.ISupportInitialize)(this.picThumbnail)).EndInit();
			this.ResumeLayout(false);
			this.PerformLayout();

		}

		#endregion

		private System.Windows.Forms.MenuStrip mnuMain;
		private System.Windows.Forms.ToolStripMenuItem mnuFile;
		private System.Windows.Forms.ToolStripMenuItem mnuFileNew;
		private System.Windows.Forms.ToolStripMenuItem mnuFileNewHitori;
		private System.Windows.Forms.ToolStripMenuItem mnuFileOpen;
		private System.Windows.Forms.ToolStripMenuItem mnuFileSaveAs;
		private System.Windows.Forms.ToolStripSeparator mnuFileLine;
		private System.Windows.Forms.ToolStripMenuItem mnuFileExit;
		private System.Windows.Forms.ToolStripMenuItem mnuPuzzle;
		private System.Windows.Forms.ToolStripMenuItem mnuPuzzleDesign;
		private System.Windows.Forms.SaveFileDialog dlgSave;
		private System.Windows.Forms.OpenFileDialog dlgOpen;
		private System.Windows.Forms.ToolStripMenuItem mnuFileSave;
		private System.Windows.Forms.ToolStripMenuItem mnuPuzzleReset;
		private System.Windows.Forms.ToolStripMenuItem mnuFileNewKukuro;
		private System.Windows.Forms.ToolStripMenuItem mnuFileNewSudoku;
		private System.Windows.Forms.ToolStripMenuItem mnuFileNewYubotu;
		private System.Windows.Forms.PictureBox picThumbnail;
		private System.Windows.Forms.ToolStripMenuItem mnuPuzzleLegend;
	}
}

