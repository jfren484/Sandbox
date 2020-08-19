using CtDSolver.Helpers;
using System;
using System.Drawing;
using System.Windows.Forms;

namespace CtDSolver.Forms
{
    public partial class ToolboxForm : Form
    {
        public ToolboxForm()
        {
            InitializeComponent();

            toolStrip.Renderer = new CustomToolStripRenderer();

            selectedColorPanel.BackColor = toolStripButtonRed.BackColor;
        }

        public Color SelectedColor => selectedColorPanel.BackColor;

        private void toolStripButton_Click(object sender, EventArgs e)
        {
            selectedColorPanel.BackColor = (sender as ToolStripButton).BackColor;
        }

        #region Handling for activating window and passing click event through

        private bool handleFirstClickOnActivated = false;

        /// <summary>
        /// Raises the <see cref="E:System.Windows.Forms.Form.Activated" /> event.
        /// Handle WinForms bug for first click during activation
        /// </summary>
        /// <param name="e">An <see cref="T:System.EventArgs" /> that contains the event data.</param>
        protected override void OnActivated(EventArgs e)
        {
            base.OnActivated(e);
            if (handleFirstClickOnActivated)
            {
                var cursorPosition = Cursor.Position;
                var clientPoint = PointToClient(cursorPosition);
                var child = GetChildAtPoint(clientPoint);

                while (handleFirstClickOnActivated && child != null)
                {
                    if (child is ToolStrip toolStrip)
                    {
                        handleFirstClickOnActivated = false;
                        clientPoint = toolStrip.PointToClient(cursorPosition);
                        foreach (var item in toolStrip.Items)
                        {
                            if (item is ToolStripItem toolStripItem && toolStripItem.Bounds.Contains(clientPoint))
                            {
                                if (item is ToolStripMenuItem tsMenuItem)
                                {
                                    tsMenuItem.ShowDropDown();
                                }
                                else
                                {
                                    toolStripItem.PerformClick();
                                }

                                break;
                            }
                        }
                    }
                    else
                    {
                        child = child.GetChildAtPoint(clientPoint);
                    }
                }

                handleFirstClickOnActivated = false;
            }
        }


        /// <summary>
        /// Handle WndProc
        /// </summary>
        /// <param name="m">The Windows <see cref="T:System.Windows.Forms.Message" /> to process.</param>
        protected override void WndProc(ref Message m)
        {
            const int WM_ACTIVATE = 0x0006;
            const int WA_CLICKACTIVE = 0x0002;
            if (m.Msg == WM_ACTIVATE && unchecked((short)(IntPtr.Size == 8 ? unchecked((int)m.WParam.ToInt64()) : m.WParam.ToInt32())) == WA_CLICKACTIVE)
            {
                handleFirstClickOnActivated = true;
            }
            base.WndProc(ref m);
        }

        #endregion
    }
}
