using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace LabTest2
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private ViewModel viewModel = new ViewModel();
        private Label lblLookAtMe;

        public MainWindow()
        {
            InitializeComponent();
            DataContext = viewModel;
        }

        private void BtnCalc_Click(object sender, RoutedEventArgs e)
        {
            if (double.TryParse(txtNumber.Text, out double val))
            {
                txtNumber.Text = "";
                viewModel.CalculatedValue += val;
            }
            else
            {
                MessageBox.Show($"'{txtNumber.Text}' is not a valid number!");
            }

            txtNumber.Focus();
        }

        private void BtnCreate_Click(object sender, RoutedEventArgs e)
        {
            btnCreate.IsEnabled = false;

            lblLookAtMe = new Label
            {
                Content = "Look at me",
                Margin = new Thickness(0, gridMain.ActualHeight - lblTotal.ActualHeight, 0, 0)
            };

            gridMain.Children.Add(lblLookAtMe);
        }
    }
}
