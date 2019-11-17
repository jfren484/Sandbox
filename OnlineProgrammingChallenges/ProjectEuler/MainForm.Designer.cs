namespace ProjectEuler
{
	partial class MainForm
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
			System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(MainForm));
			this.lstProblems = new System.Windows.Forms.ListBox();
			this.btnExecute = new System.Windows.Forms.Button();
			this.lblTimeLabel = new System.Windows.Forms.Label();
			this.lblAnswerLabel = new System.Windows.Forms.Label();
			this.txtAnswerValue = new System.Windows.Forms.TextBox();
			this.txtTimeValue = new System.Windows.Forms.TextBox();
			this.SuspendLayout();
			// 
			// lstProblems
			// 
			this.lstProblems.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.lstProblems.FormattingEnabled = true;
			this.lstProblems.Location = new System.Drawing.Point(0, 0);
			this.lstProblems.Name = "lstProblems";
			this.lstProblems.Size = new System.Drawing.Size(424, 199);
			this.lstProblems.TabIndex = 0;
			this.lstProblems.DoubleClick += new System.EventHandler(this.ExecuteClick);
			// 
			// btnExecute
			// 
			this.btnExecute.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
			this.btnExecute.Location = new System.Drawing.Point(12, 205);
			this.btnExecute.Name = "btnExecute";
			this.btnExecute.Size = new System.Drawing.Size(75, 23);
			this.btnExecute.TabIndex = 1;
			this.btnExecute.Text = "Execute";
			this.btnExecute.UseVisualStyleBackColor = true;
			this.btnExecute.Click += new System.EventHandler(this.ExecuteClick);
			// 
			// lblTimeLabel
			// 
			this.lblTimeLabel.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
			this.lblTimeLabel.AutoSize = true;
			this.lblTimeLabel.Location = new System.Drawing.Point(111, 210);
			this.lblTimeLabel.Name = "lblTimeLabel";
			this.lblTimeLabel.Size = new System.Drawing.Size(33, 13);
			this.lblTimeLabel.TabIndex = 3;
			this.lblTimeLabel.Text = "Time:";
			// 
			// lblAnswerLabel
			// 
			this.lblAnswerLabel.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
			this.lblAnswerLabel.AutoSize = true;
			this.lblAnswerLabel.Location = new System.Drawing.Point(111, 236);
			this.lblAnswerLabel.Name = "lblAnswerLabel";
			this.lblAnswerLabel.Size = new System.Drawing.Size(45, 13);
			this.lblAnswerLabel.TabIndex = 5;
			this.lblAnswerLabel.Text = "Answer:";
			// 
			// txtAnswerValue
			// 
			this.txtAnswerValue.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.txtAnswerValue.Location = new System.Drawing.Point(162, 232);
			this.txtAnswerValue.Name = "txtAnswerValue";
			this.txtAnswerValue.ReadOnly = true;
			this.txtAnswerValue.Size = new System.Drawing.Size(255, 20);
			this.txtAnswerValue.TabIndex = 7;
			// 
			// txtTimeValue
			// 
			this.txtTimeValue.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
			this.txtTimeValue.Location = new System.Drawing.Point(162, 206);
			this.txtTimeValue.Name = "txtTimeValue";
			this.txtTimeValue.ReadOnly = true;
			this.txtTimeValue.Size = new System.Drawing.Size(56, 20);
			this.txtTimeValue.TabIndex = 8;
			this.txtTimeValue.Text = "0:00.000";
			// 
			// MainForm
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.ClientSize = new System.Drawing.Size(424, 258);
			this.Controls.Add(this.txtTimeValue);
			this.Controls.Add(this.txtAnswerValue);
			this.Controls.Add(this.lblAnswerLabel);
			this.Controls.Add(this.lblTimeLabel);
			this.Controls.Add(this.btnExecute);
			this.Controls.Add(this.lstProblems);
			this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
			this.Name = "MainForm";
			this.Text = "Project Euler Solutions";
			this.ResumeLayout(false);
			this.PerformLayout();

		}

		#endregion

		private System.Windows.Forms.ListBox lstProblems;
		private System.Windows.Forms.Button btnExecute;
		private System.Windows.Forms.Label lblTimeLabel;
		private System.Windows.Forms.Label lblAnswerLabel;
		private System.Windows.Forms.TextBox txtAnswerValue;
		private System.Windows.Forms.TextBox txtTimeValue;
	}
}

