using CtDSolver.Helpers;
using CtDSolver.Models;
using Newtonsoft.Json;
using System;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Windows.Forms;

namespace CtDSolver.Forms
{
    public partial class MainForm : Form
    {
        #region Private Fields and Constructor

        private const int CellSize = 40;
        private const int EmptyCircleSize = 16;
        private const int EmptyCircleOffset = (CellSize - EmptyCircleSize) / 2;
        private const int FilledCircleSize = 18;
        private const int FilledCircleOffset = (CellSize - FilledCircleSize) / 2;

        private bool _unsavedChanges;
        private string _currentFileName;
        private Puzzle _model = new Puzzle(8, 8);

        private readonly ToolboxForm _toolboxForm = new ToolboxForm();

        public MainForm()
        {
            InitializeComponent();
        }

        #endregion

        #region Helpers

        private void ResizePanel()
        {
            panel.Size = new Size(_model.Size.Width * CellSize, _model.Size.Height * CellSize);
            panel.Invalidate();
        }

        private void SaveFile(string fileName)
        {
            if (fileName == null)
            {
                if (saveFileDialog.ShowDialog() != DialogResult.OK)
                {
                    return;
                }

                fileName = saveFileDialog.FileName;
            }

            try
            {
                File.WriteAllText(fileName, JsonConvert.SerializeObject(_model, Formatting.Indented));
                _currentFileName = fileName;
                _unsavedChanges = false;
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Error writing file: {ex.Message}", "Error", MessageBoxButtons.OK);
            }
        }

        private Point TranslatePixelToLocation(Point clientPoint)
        {
            return new Point(clientPoint.X / CellSize, clientPoint.Y / CellSize);
        }

        #endregion

        #region Menu Handlers

        private void newToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (_unsavedChanges && MessageBox.Show("You have unsaved changes. Are you sure you want to abandon them?", "Confirm", MessageBoxButtons.YesNo) == DialogResult.No)
            {
                return;
            }

            var newPuzzleForm = new NewPuzzleForm();
            if (newPuzzleForm.ShowDialog() != DialogResult.OK)
            {
                return;
            }

            _unsavedChanges = false;
            _currentFileName = null;
            _model = new Puzzle(newPuzzleForm.NewPuzzleWidth, newPuzzleForm.NewPuzzleHeight);
            ResizePanel();
        }

        private void openToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (openFileDialog.ShowDialog() != DialogResult.OK)
            {
                return;
            }

            try
            {
                _model = JsonConvert.DeserializeObject<Puzzle>(File.ReadAllText(openFileDialog.FileName));
                _currentFileName = openFileDialog.FileName;
                _unsavedChanges = false;
                ResizePanel();
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Error reading file: {ex.Message}", "Error", MessageBoxButtons.OK);
            }
        }

        private void saveAsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            SaveFile(null);
        }

        private void saveToolStripMenuItem_Click(object sender, EventArgs e)
        {
            SaveFile(_currentFileName);
        }

        #endregion

        #region Panel Handlers

        private void panel_Click(object sender, EventArgs e)
        {
            var clickLocation = TranslatePixelToLocation(panel.PointToClient(Cursor.Position));

            var endpoint = _model.Endpoints.SingleOrDefault(ep => ep.Location == clickLocation);
            if (endpoint == null)
            {
                _model.Endpoints.Add(new Endpoint { Color = _toolboxForm.SelectedColor, Location = clickLocation });
            }
            else if (endpoint.Color == _toolboxForm.SelectedColor)
            {
                _model.Endpoints.Remove(endpoint);
            }
            else
            {
                endpoint.Color = _toolboxForm.SelectedColor;
            }

            _unsavedChanges = true;

            panel.Invalidate(new Rectangle(clickLocation.X * CellSize + FilledCircleOffset, clickLocation.Y * CellSize + FilledCircleOffset, FilledCircleSize, FilledCircleSize));
        }

        private void panel_Paint(object sender, PaintEventArgs e)
        {
            for (var x = 0; x < _model.Size.Width; ++x)
            {
                for (var y = 0; y < _model.Size.Height; ++y)
                {
                    e.Graphics.FillEllipse(new SolidBrush(Color.Black), x * CellSize + EmptyCircleOffset, y * CellSize + EmptyCircleOffset, EmptyCircleSize, EmptyCircleSize);
                }
            }

            foreach (var endpoint in _model.Endpoints)
            {
                e.Graphics.FillEllipse(new SolidBrush(endpoint.Color), endpoint.Location.X * CellSize + FilledCircleOffset, endpoint.Location.Y * CellSize + FilledCircleOffset, FilledCircleSize, FilledCircleSize);
            }
        }

        #endregion

        private void MainForm_Load(object sender, EventArgs e)
        {
            _toolboxForm.Location = new Point(Location.X + Size.Width, Location.Y);
            _toolboxForm.Show();
        }
    }
}
