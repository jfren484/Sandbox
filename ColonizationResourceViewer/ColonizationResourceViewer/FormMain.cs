using ColonizationResourceLib;
using ColonizationResourceViewer.Properties;
using System;
using System.Collections.Specialized;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Windows.Forms;

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
					defaultPalette = new ColPalette(File.ReadAllBytes(Settings.Default.ViceRoyPalFile));
					mnuFileSetPal.Checked = true;
				}
				catch (Exception) { }
			}

			dlgBrowse.SelectedPath = Settings.Default.BrowseFolder;
			dlgSaveFolder.SelectedPath = Settings.Default.SaveFolder;

			Settings.Default.Save();

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
			mnuFileExport.Enabled = false;

			Text = "Colonization Resource Viewer - Browsing " + folderPath;

			listEntries.Items.Clear();

			var files = Directory.GetFiles(folderPath, "*.PIK", SearchOption.TopDirectoryOnly)
				.Concat(Directory.GetFiles(folderPath, "*.SS", SearchOption.TopDirectoryOnly))
				.ToList();

			foreach (var filePath in files)
			{
				var resourceFile = GetResourceFile(filePath);

                var item = new ListViewItem(new[]
                {
                    Path.GetFileNameWithoutExtension(filePath),
                    resourceFile is ColSpriteFile ? "Sprite Series" : "Picture",
                    (resourceFile is ColSpriteFile file ? file.ImageCount : 1).ToString()
                })
                {
                    Tag = resourceFile
                };

                listEntries.Items.Add(item);
			}

			if (listEntries.Items.Count > 0)
			{
				listEntries.Items[0].Selected =
				listEntries.Items[0].Focused = true;
			}

			if (!folderPath.EndsWith(Path.DirectorySeparatorChar.ToString()))
				folderPath += Path.DirectorySeparatorChar;
			AddToRecentFiles(folderPath);
		}

		private void ExportFile(string destFolder)
        {
			foreach (ListViewItem item in listEntries.Items)
            {
				if (item.Index == 0) continue;

				var image = colFile.GetImage(item.Index);
				image.Save(Path.Combine(destFolder, $"{colFile.FileName}-{item.Text}.png"), ImageFormat.Png);
			}
        }

		private ColResourceFile GetResourceFile(string filePath)
		{
			ColResourceFile resourceFile;

			if (filePath.ToUpper().EndsWith(".SS"))
				resourceFile = new ColSpriteFile(filePath, defaultPalette);
			else if (filePath.ToUpper().EndsWith(".PIK"))
				resourceFile = new ColPictureFile(filePath, defaultPalette);
			else
				throw new ColResourceException("Only .SS and .PIK files are supported.");

			return resourceFile;
		}

		private void OpenFile(string filePath)
		{
			var success = false;

			mnuFileExport.Enabled = false;

			try
			{
				colFile = GetResourceFile(filePath);

				success = true;
			}
			catch (ColResourceException ex)
			{
				MessageBox.Show(string.Format("Error reading file: {0}", ex.Message));
			}

			if (success)
			{
				Text = "Colonization Resource Viewer - " + Path.GetFileName(filePath);

				AddToRecentFiles(filePath);

				listEntries.Items.Clear();
				foreach (var imageEntry in colFile.GetImageList())
					listEntries.Items.Add(new ListViewItem(imageEntry));

				listEntries.Items[1].Selected =
				listEntries.Items[1].Focused = true;

				mnuFileExport.Enabled = true;
			}
		}

		private void SetPicBoxSize()
		{
			picBox.Size = new Size((int)(imageSize.Width * zoomSettings[zoomIndex]),
				(int)(imageSize.Height * zoomSettings[zoomIndex]));
		}

		private void UpdateRecentFileMenus()
		{
			var index = 0;
			mnuFileRecent.DropDownItems.Clear();
			foreach (var filePath in Settings.Default.RecentFiles)
			{
				var browse = filePath.EndsWith(Path.DirectorySeparatorChar.ToString()) ? "Browse " : string.Empty;
				var item = new ToolStripMenuItem(string.Format("&{0} {1}{2}", ++index, browse, filePath), null, mnuFileRecent_Click)
				{
					Tag = filePath
				};
                mnuFileRecent.DropDownItems.Add(item);
			}
		}

		#region Event Handlers

		#pragma warning disable IDE1006 // Naming Styles

		private void listEntries_SelectedIndexChanged(object sender, EventArgs e)
		{
			// If an entry is selected, update the picture box with a new image, otherwise clear it.
			if (listEntries.SelectedIndices.Count > 0)
			{
				// Determine which entry is selected.
				var index = listEntries.SelectedIndices[0];

				// If we're browsing, get the resource file selected.
				if (listEntries.SelectedItems[0].Tag is ColResourceFile file)
				{
					colFile = file;
					index = 1;
				}

				// Get the image selected.
				var image = colFile.GetImage(index);

				// Save the original (unzoomed) image size.
				imageSize = image.Size;

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
				Settings.Default.BrowseFolder = dlgBrowse.SelectedPath;
				Settings.Default.Save();

				BrowseFolder(dlgBrowse.SelectedPath);
			}
		}

		private void mnuFileExit_Click(object sender, EventArgs e)
		{
			Application.Exit();
		}

		private void mnuFileExport_Click(object sender, EventArgs e)
		{
			if (dlgSaveFolder.ShowDialog(this) == DialogResult.OK)
			{
				ExportFile(dlgSaveFolder.SelectedPath);
			}

			Settings.Default.SaveFolder = dlgSaveFolder.SelectedPath;
			Settings.Default.Save();
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
			var filePath = (string)((ToolStripMenuItem)sender).Tag;
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
					var data = File.ReadAllBytes(dlgOpenPAL.FileName);

					defaultPalette = new ColPalette(data);

					mnuFileSetPal.Checked = true;

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
			zoomIndex = 4;
			SetPicBoxSize();
		}

		private void mnuZoomIn_Click(object sender, EventArgs e)
		{
			zoomIndex = Math.Min(zoomIndex + 1, zoomSettings.Length - 1);
			SetPicBoxSize();
		}

		private void mnuZoomOut_Click(object sender, EventArgs e)
		{
			zoomIndex = Math.Max(zoomIndex - 1, 0);
			SetPicBoxSize();
		}

        #endregion
    }
}
