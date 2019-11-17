using System;
using System.Linq;
using System.Reflection;
using System.Windows.Forms;
using ProjectEuler.Solvers;

namespace ProjectEuler
{
	public partial class MainForm : Form
	{
		public const string TimeSpanFormat = @"mm\:ss\.fff";

		public MainForm()
		{
			InitializeComponent();
			var type = typeof(IProblemSolver);
			var problems = from t in Assembly.GetAssembly(type).GetTypes()
			               where type.IsAssignableFrom(t) && t.IsClass && t.GetDescription().Length > 0
						   orderby t.Name descending
			               select new Problem(t.FullName, t.GetDescription());
			lstProblems.Items.AddRange(problems.ToArray());
			lstProblems.SelectedIndex = 0;
		}

		private void ExecuteClick(object sender, EventArgs e)
		{
			txtTimeValue.Text =
			txtAnswerValue.Text = string.Empty;
            Application.DoEvents();

			var solver = (IProblemSolver)Activator.CreateInstance(Type.GetType(((Problem)lstProblems.SelectedItem).ClassName));

			var start = DateTime.Now;
			var result = solver.Execute();
			var end = DateTime.Now;

			txtTimeValue.Text = (end - start).ToString(TimeSpanFormat);
			txtAnswerValue.Text = result;
		}
	}
}
