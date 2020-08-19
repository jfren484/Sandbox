using System.Windows.Forms;

namespace CtDSolver.Forms
{
    public partial class NewPuzzleForm : Form
    {
        public NewPuzzleForm()
        {
            InitializeComponent();
        }

        public int NewPuzzleWidth => (int)numWidth.Value;
        public int NewPuzzleHeight => (int)numHeight.Value;
    }
}
