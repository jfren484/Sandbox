using System;
using System.Collections.Specialized;
using System.Drawing;
using System.IO;
using System.Windows.Forms;
using ColonizationResourceLib;
using ColonizationResourceViewer.Properties;
using System.Collections.Generic;

namespace ColonizationResourceViewer
{
	public partial class FormMain: Form
	{
		private ColPalette defaultPalette = null;
		private ColResourceFile colFile = null;
		private Size imageSize = Size.Empty;

		private readonly double[] zoomSettings = new double[] { 0.1, 0.25, 0.5, 0.75, 1, 1.5, 2, 3, 4, 10 };
		private int zoomIndex = 4;

		public FormMain()
		{
			InitializeComponent();

			if (Settings.Default.RecentFiles == null)
				Settings.Default.RecentFiles = new StringCollection();

			if (Settings.Default.ViceRoyPalFile.Length > 0)
			{
				try
				{
					this.defaultPalette = new ColPalette(File.ReadAllBytes(Settings.Default.ViceRoyPalFile));
					this.mnuFileSetPal.Checked = true;
				}
				catch (Exception) { }
			}

			UpdateRecentFileMenus();
		}

		private void AddToRecentFiles(string filePath)
		{
			if (Settings.Default.RecentFiles.IndexOf(filePath) != 0)
			{
				if (Settings.Default.RecentFiles.Contains(filePath))
					Settings.Default.RecentFiles.Remove(filePath);
				else if (Settings.Default.RecentFiles.Count >= 4)
					Settings.Default.RecentFiles.RemoveAt(Settings.Default.RecentFiles.Count - 1);

				Settings.Default.RecentFiles.Insert(0, filePath);

				Settings.Default.Save();
				UpdateRecentFileMenus();
			}
		}

		private void BrowseFolder(string folderPath)
		{
			this.Text = "Colonization Resource Viewer - Browsing " + folderPath;

			this.listEntries.Items.Clear();

			List<string> files = new List<string>();
			files.AddRange(Directory.GetFiles(folderPath, "*.PIK", SearchOption.TopDirectoryOnly));
			files.AddRange(Directory.GetFiles(folderPath, "*.SS", SearchOption.TopDirectoryOnly));

			foreach (string filePath in files)
			{
				ColResourceFile resourceFile = GetResourceFile(filePath);

				ListViewItem item = new ListViewItem(new string[]
				{
					Path.GetFileNameWithoutExtension(filePath),
					resourceFile is ColSpriteFile ? "Sprite Series" : "Picture",
					(resourceFile is ColSpriteFile ? ((ColSpriteFile)resourceFile).ImageCount : 1).ToString()
				});
				item.Tag = resourceFile;

				this.listEntries.Items.Add(item);
			}

			if (this.listEntries.Items.Count > 0)
			{
				this.listEntries.Items[0].Selected =
				this.listEntries.Items[0].Focused = true;
			}

			if (!folderPath.EndsWith(Path.DirectorySeparatorChar.ToString()))
				folderPath += Path.DirectorySeparatorChar;
			AddToRecentFiles(folderPath);
		}

		private ColResourceFile GetResourceFile(string filePath)
		{
			ColResourceFile resourceFile;

			if (filePath.ToUpper().EndsWith(".SS"))
				resourceFile = new ColSpriteFile(File.ReadAllBytes(filePath), defaultPalette);
			else if (filePath.ToUpper().EndsWith(".PIK"))
				resourceFile = new ColPictureFile(File.ReadAllBytes(filePath), defaultPalette);
			else
				throw new ColResourceException("Only .SS and .PIK files are supported.");

			return resourceFile;
		}

		private void OpenFile(string filePath)
		{
			bool success = false;

			try
			{
				this.colFile = GetResourceFile(filePath);

				success = true;
			}
			catch (ColResourceException ex)
			{
				MessageBox.Show(String.Format("Error reading file: {0}", ex.Message));
			}

			if (success)
			{
				this.Text = "Colonization Resource Viewer - " + Path.GetFileName(filePath);

				AddToRecentFiles(filePath);

				this.listEntries.Items.Clear();
				foreach (string[] imageEntry in this.colFile.GetImageList())
					this.listEntries.Items.Add(new ListViewItem(imageEntry));

				this.listEntries.Items[1].Selected =
				this.listEntries.Items[1].Focused = true;
			}
		}

		private void SetPicBoxSize()
		{
			this.picBox.Size = new Size((int)(this.imageSize.Width * this.zoomSettings[this.zoomIndex]),
				(int)(this.imageSize.Height * this.zoomSettings[this.zoomIndex]));
		}

		private void UpdateRecentFileMenus()
		{
			int index = 0;
			this.mnuFileRecent.DropDownItems.Clear();
			foreach (string filePath in Settings.Default.RecentFiles)
			{
				string browse = filePath.EndsWith(Path.DirectorySeparatorChar.ToString()) ? "Browse " : String.Empty;
				ToolStripMenuItem item = new ToolStripMenuItem(String.Format("&{0} {1}{2}", ++index, browse, filePath), null, this.mnuFileRecent_Click);
				item.Tag = filePath;
				this.mnuFileRecent.DropDownItems.Add(item);
			}
		}

		#region Event Handlers

		private void listEntries_SelectedIndexChanged(object sender, EventArgs e)
		{
			// If an entry is selected, update the picture box with a new image, otherwise clear it.
			if (listEntries.SelectedIndices.Count > 0)
			{
				// Determine which entry is selected.
				int index = listEntries.SelectedIndices[0];

				// If we're browsing, get the resource file selected.
				if (listEntries.SelectedItems[0].Tag is ColResourceFile)
				{
					this.colFile = (ColResourceFile)listEntries.SelectedItems[0].Tag;
					index = 1;
				}

				// Get the image selected.
				Bitmap image = this.colFile.GetImage(index);

				// Save the original (unzoomed) image size.
				this.imageSize = image.Size;

				// Adjust the size of the picture box for the current zoom factor.
				SetPicBoxSize();

				// Update the picture box's image.
				picBox.Image = image;
			}
			else
				picBox.Image = null;
		}

		private void mnuFileBrowse_Click(object sender, EventArgs e)
		{
			if (dlgBrowse.ShowDialog(this) == DialogResult.OK)
			{
				BrowseFolder(dlgBrowse.SelectedPath);
			}
		}

		private void mnuFileExit_Click(object sender, EventArgs e)
		{
			Application.Exit();
		}

		private void mnuFileOpen_Click(object sender, EventArgs e)
		{
			if (dlgOpen.ShowDialog(this) == DialogResult.OK)
			{
				OpenFile(dlgOpen.FileName);
			}
		}

		private void mnuFileRecent_Click(object sender, EventArgs e)
		{
			string filePath = (string)((ToolStripMenuItem)sender).Tag;
			if (filePath.EndsWith(Path.DirectorySeparatorChar.ToString()))
				BrowseFolder(filePath);
			else
				OpenFile(filePath);
		}

		private void mnuFileSetPal_Click(object sender, EventArgs e)
		{
			if (dlgOpenPAL.ShowDialog(this) == DialogResult.OK)
			{
				try
				{
					byte[] data = File.ReadAllBytes(dlgOpenPAL.FileName);

					this.defaultPalette = new ColPalette(data);

					this.mnuFileSetPal.Checked = true;

					Settings.Default.ViceRoyPalFile = dlgOpenPAL.FileName;
					Settings.Default.Save();
				}
				catch (Exception ex)
				{
					MessageBox.Show("Error reading default palette file: " + ex.Message);
				}
			}
		}

		private void mnuZoomActual_Click(object sender, EventArgs e)
		{
			this.zoomIndex = 4;
			SetPicBoxSize();
		}

		private void mnuZoomIn_Click(object sender, EventArgs e)
		{
			this.zoomIndex = Math.Min(this.zoomIndex + 1, this.zoomSettings.Length - 1);
			SetPicBoxSize();
		}

		private void mnuZoomOut_Click(object sender, EventArgs e)
		{
			this.zoomIndex = Math.Max(this.zoomIndex - 1, 0);
			SetPicBoxSize();
		}

		#endregion
	}
}
