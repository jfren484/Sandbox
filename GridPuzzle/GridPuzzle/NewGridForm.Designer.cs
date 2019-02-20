namespace GridPuzzle
{
	partial class NewGridForm
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
			this.btnCancel = new System.Windows.Forms.Button();
			this.btnOk = new System.Windows.Forms.Button();
			this.lblColumns = new System.Windows.Forms.Label();
			this.lblRows = new System.Windows.Forms.Label();
			this.lblInstructions = new System.Windows.Forms.Label();
			this.numRows = new System.Windows.Forms.NumericUpDown();
			this.numColumns = new System.Windows.Forms.NumericUpDown();
			((System.ComponentModel.ISupportInitialize)(this.numRows)).BeginInit();
			((System.ComponentModel.ISupportInitialize)(this.numColumns)).BeginInit();
			this.SuspendLayout();
			// 
			// btnCancel
			// 
			this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
			this.btnCancel.Location = new System.Drawing.Point(128, 93);
			this.btnCancel.Name = "btnCancel";
			this.btnCancel.Size = new System.Drawing.Size(75, 23);
			this.btnCancel.TabIndex = 6;
			this.btnCancel.Text = "Cancel";
			this.btnCancel.UseVisualStyleBackColor = true;
			// 
			// btnOk
			// 
			this.btnOk.DialogResult = System.Windows.Forms.DialogResult.OK;
			this.btnOk.Location = new System.Drawing.Point(47, 93);
			this.btnOk.Name = "btnOk";
			this.btnOk.Size = new System.Drawing.Size(75, 23);
			this.btnOk.TabIndex = 5;
			this.btnOk.Text = "&Ok";
			this.btnOk.UseVisualStyleBackColor = true;
			// 
			// lblColumns
			// 
			this.lblColumns.AutoSize = true;
			this.lblColumns.Location = new System.Drawing.Point(73, 38);
			this.lblColumns.Name = "lblColumns";
			this.lblColumns.Size = new System.Drawing.Size(50, 13);
			this.lblColumns.TabIndex = 1;
			this.lblColumns.Text = "Columns:";
			// 
			// lblRows
			// 
			this.lblRows.AutoSize = true;
			this.lblRows.Location = new System.Drawing.Point(73, 64);
			this.lblRows.Name = "lblRows";
			this.lblRows.Size = new System.Drawing.Size(37, 13);
			this.lblRows.TabIndex = 3;
			this.lblRows.Text = "Rows:";
			// 
			// lblInstructions
			// 
			this.lblInstructions.Location = new System.Drawing.Point(12, 9);
			this.lblInstructions.Name = "lblInstructions";
			this.lblInstructions.Size = new System.Drawing.Size(230, 13);
			this.lblInstructions.TabIndex = 0;
			this.lblInstructions.Text = "Enter the {0}dimensions for the new {1}.";
			this.lblInstructions.TextAlign = System.Drawing.ContentAlignment.TopCenter;
			// 
			// numRows
			// 
			this.numRows.Location = new System.Drawing.Point(128, 62);
			this.numRows.Name = "numRows";
			this.numRows.Size = new System.Drawing.Size(49, 20);
			this.numRows.TabIndex = 4;
			this.numRows.Value = new decimal(new int[] {
            10,
            0,
            0,
            0});
			// 
			// numColumns
			// 
			this.numColumns.Location = new System.Drawing.Point(129, 36);
			this.numColumns.Name = "numColumns";
			this.numColumns.Size = new System.Drawing.Size(48, 20);
			this.numColumns.TabIndex = 2;
			this.numColumns.Value = new decimal(new int[] {
            10,
            0,
            0,
            0});
			// 
			// NewGridForm
			// 
			this.AcceptButton = this.btnOk;
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.CancelButton = this.btnCancel;
			this.ClientSize = new System.Drawing.Size(251, 132);
			this.ControlBox = false;
			this.Controls.Add(this.numColumns);
			this.Controls.Add(this.numRows);
			this.Controls.Add(this.lblInstructions);
			this.Controls.Add(this.lblRows);
			this.Controls.Add(this.lblColumns);
			this.Controls.Add(this.btnOk);
			this.Controls.Add(this.btnCancel);
			this.MaximizeBox = false;
			this.MinimizeBox = false;
			this.Name = "NewGridForm";
			this.ShowIcon = false;
			this.ShowInTaskbar = false;
			this.SizeGripStyle = System.Windows.Forms.SizeGripStyle.Hide;
			this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
			this.Text = "New Puzzle";
			((System.ComponentModel.ISupportInitialize)(this.numRows)).EndInit();
			((System.ComponentModel.ISupportInitialize)(this.numColumns)).EndInit();
			this.ResumeLayout(false);
			this.PerformLayout();

		}

		#endregion

		private System.Windows.Forms.Button btnCancel;
		private System.Windows.Forms.Button btnOk;
		private System.Windows.Forms.Label lblColumns;
		private System.Windows.Forms.Label lblRows;
		private System.Windows.Forms.Label lblInstructions;
		private System.Windows.Forms.NumericUpDown numRows;
		private System.Windows.Forms.NumericUpDown numColumns;
	}
}