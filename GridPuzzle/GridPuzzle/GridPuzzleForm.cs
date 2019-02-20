using System;
using System.Drawing;
using System.IO;
using System.Windows.Forms;
using GridPuzzleLib;
using GridPuzzleLib.Grids;

namespace GridPuzzle
{
	public partial class GridPuzzleForm: Form
	{
		#region Private Member Variables

		private Grid		grid					= null;
		private	string	gridFileName	= null;

		private string	dragFileName	= String.Empty;
		private bool		dragOk				= false;
		private	Point		dragLocation	= Point.Empty;

		#endregion

		#region Methods

		public GridPuzzleForm(string fileName)
		{
			InitializeComponent();

			try
			{
				if (fileName != null)
				{
					ReplaceGrid(Grid.FromXml(fileName));
					SetFileName(fileName);
				}
			}
			catch (Exception ex)
			{
				MessageBox.Show(String.Format("Could not open {0}: {1}", fileName, ex.Message));
			}
		}

		private void ReplaceGrid(Grid newGrid)
		{
			if (grid != null && grid.Legend != null & this.Controls.Contains(grid.Legend))
				this.Controls.Remove(grid.Legend);

			if (this.Controls.Contains(grid))
				this.Controls.Remove(grid);

			grid																	= null;

			mnuPuzzleDesign.Checked								= false;
			mnuPuzzleLegend.Checked								= false;

			grid																	= newGrid;

			grid.Location													= new Point(10, mnuMain.Height + 10);

			this.ClientSize												= new Size(grid.Width + 20, grid.Height + mnuMain.Height + 20);
			this.Controls.Add(grid);

			if (grid is GridSudoku)
			{
				((GridSudoku)grid).LockedFont				= new Font(this.Font, FontStyle.Bold);
				((GridSudoku)grid).LockedForeColor	= Color.DarkRed;
			}

			grid.Focus();

			mnuFileSave.Enabled										= true;
			mnuFileSaveAs.Enabled									= true;
			mnuPuzzleDesign.Enabled								= true;
			mnuPuzzleReset.Enabled								= true;
			mnuPuzzleLegend.Enabled								= grid.Legend != null;

			if (grid.Legend != null)
				mnuPuzzleLegend.Checked							= true;
		}

		private void OpenFile(string fileName)
		{
			try
			{
				ReplaceGrid(Grid.FromXml(fileName));

				SetFileName(fileName);
			}
			catch (Exception ex)
			{
				MessageBox.Show(String.Format("Could not open {0}: {1}", fileName, ex.Message));
			}
		}

		private void SetFileName(string fileName)
		{
			gridFileName	= fileName;

			this.Text			= String.Format("Grid Puzzle - {0}", gridFileName == null ? String.Format("<new {0} puzzle>", grid.PuzzleType) : Path.GetFileName(gridFileName));
		}

		#region Overrides

		protected override void OnDragDrop(DragEventArgs e)
		{
			base.OnDragDrop(e);

			if (dragOk)
			{
				picThumbnail.Visible	= false;

				OpenFile(dragFileName);
			}
		}

		protected override void OnDragEnter(DragEventArgs e)
		{
			base.OnDragEnter(e);

			dragOk				= false;
			dragFileName	= String.Empty;

			if ((e.AllowedEffect & DragDropEffects.Copy) == DragDropEffects.Copy)
			{
				Array	data	= ((IDataObject)e.Data).GetData("FileName") as Array;

				if (data != null && data.Length == 1 && data.GetValue(0) is String)
				{
					dragFileName	= ((string[])data)[0];
					if (Path.GetExtension(dragFileName).ToLower().Equals(".puz"))
					{
						dragOk								= true;

						Grid		dragGrid			= Grid.FromXml(dragFileName);
						Bitmap	bmp						= new Bitmap(dragGrid.Width, dragGrid.Height);
						dragGrid.Font					= this.Font;

						dragGrid.DrawToBitmap(bmp, new Rectangle(Point.Empty, bmp.Size));

						picThumbnail.Size			= new Size(bmp.Width / 2 + 1, bmp.Height / 2 + 1);
						picThumbnail.Image		= bmp;
						picThumbnail.Visible	= true;
					}
				}
			}

			e.Effect	= (dragOk ? DragDropEffects.Copy : DragDropEffects.None);
		}

		protected override void OnDragLeave(EventArgs e)
		{
			base.OnDragLeave(e);

			picThumbnail.Visible	= false;
		}

		protected override void OnDragOver(DragEventArgs e)
		{
			base.OnDragOver(e);

			if (dragOk && e.X != dragLocation.X && e.Y != dragLocation.Y && picThumbnail.Visible)
			{
				dragLocation					= this.PointToClient(new Point(e.X, e.Y));
				picThumbnail.Location	= dragLocation;
			}
		}

		#endregion

		#region Event Handlers

		private void mnuFileExit_Click(object sender, EventArgs e)
		{
			Application.Exit();
		}

		private void mnuFileNewHitori_Click(object sender, EventArgs e)
		{
			NewGridForm	form	= new NewGridForm(PuzzleType.Hitori);
			if (form.ShowDialog(this) == DialogResult.OK)
			{
				ReplaceGrid(new GridHitori(form.Columns, form.Rows));

				SetFileName(null);

				mnuPuzzleDesign.Checked	= true;
			}
		}

		private void mnuFileNewKukuro_Click(object sender, EventArgs e)
		{
			NewGridForm	form	= new NewGridForm(PuzzleType.Kukuro);
			if (form.ShowDialog(this) == DialogResult.OK)
			{
				ReplaceGrid(new GridKukuro(form.Columns, form.Rows));

				SetFileName(null);

				mnuPuzzleDesign.Checked	= true;
			}
		}

		private void mnuFileNewSudoku_Click(object sender, EventArgs e)
		{
			NewGridForm	form	= new NewGridForm(PuzzleType.Sudoku);
			if (form.ShowDialog(this) == DialogResult.OK)
			{
				ReplaceGrid(new GridSudoku(form.Columns, form.Rows));

				SetFileName(null);

				mnuPuzzleDesign.Checked	= true;
			}
		}

		private void mnuFileNewYubotu_Click(object sender, EventArgs e)
		{
			NewGridForm	form	= new NewGridForm(PuzzleType.Yubotu);
			if (form.ShowDialog(this) == DialogResult.OK)
			{
				ReplaceGrid(new GridYubotu(form.Columns, form.Rows));

				SetFileName(null);

				mnuPuzzleDesign.Checked	= true;
			}
		}

		private void mnuFileOpen_Click(object sender, EventArgs e)
		{
			if (dlgOpen.ShowDialog() == DialogResult.OK)
				OpenFile(dlgOpen.FileName);
		}

		private void mnuFileSave_Click(object sender, EventArgs e)
		{
			if (gridFileName == null)
				mnuFileSaveAs_Click(sender, e);
			else
				grid.SaveToFile(gridFileName);
		}

		private void mnuFileSaveAs_Click(object sender, EventArgs e)
		{
			if (dlgSave.ShowDialog() == DialogResult.OK)
			{
				grid.SaveToFile(dlgSave.FileName);

				SetFileName(dlgSave.FileName);
			}
		}

		private void mnuPuzzleDesign_CheckedChanged(object sender, EventArgs e)
		{
			if (grid != null)
			{
				grid.DesignMode						= mnuPuzzleDesign.Checked;

				if (grid.Legend != null)
				{
					if (this.Controls.Contains(grid.Legend))
						this.ClientSize				= new Size(Math.Max(grid.Width, grid.Legend.Width) + 20, grid.Height + grid.Legend.Height + mnuMain.Height + 40);
					else
						this.ClientSize				= new Size(grid.Width + 20, grid.Height + mnuMain.Height + 20);
				}
			}
		}

		private void mnuPuzzleLegend_CheckedChanged(object sender, EventArgs e)
		{
			if (grid != null && grid.Legend != null)
			{
				if (this.Controls.Contains(grid.Legend))
				{
					this.Controls.Remove(grid.Legend);
					this.ClientSize				= new Size(grid.Width + 20, grid.Height + mnuMain.Height + 20);
				}
				else
				{
					grid.Legend.Location	= new Point(grid.Left, grid.Top + grid.Height + 20);
					this.ClientSize				= new Size(Math.Max(grid.Width, grid.Legend.Width) + 20, grid.Height + grid.Legend.Height + mnuMain.Height + 40);
					this.Controls.Add(grid.Legend);
				}
			}
		}

		private void mnuPuzzleReset_Click(object sender, EventArgs e)
		{
			grid.Reset();
		}

		#endregion

		#endregion
	}
}