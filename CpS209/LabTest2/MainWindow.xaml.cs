using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Threading;

namespace labtest2practice
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private double calc;
        private DispatcherTimer timer;
        public MainWindow()
        {
            InitializeComponent();
            lblLabel.Content = calc;

            timer = new DispatcherTimer();
            //timer.Interval = TimeSpan.FromMilliseconds(100);
            //timer.Tick += Timer_Tick;
            //timer.IsEnabled = false;
        }

        private void btnCalculate_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                calc += Convert.ToInt32(txtBox.Text);
                lblLabel.Content = calc;
                txtBox.Text = null;
                txtBox.Focus();
            }
            catch (Exception)
            {
                MessageBox.Show("Please enter an integer.");
                txtBox.Text = null;
                txtBox.Focus();
            }

        }

        private void btnCreate_Click(object sender, RoutedEventArgs e)
        {
            //btnCreate.IsEnabled = false;
            //lblLookAtMe.Content = "Look at me";
            //lblLookAtMe.HorizontalAlignment = HorizontalAlignment.Left;
            //lblLookAtMe.VerticalAlignment = VerticalAlignment.Bottom;
            //grdGrid.Children.Add(lblLookAtMe);
        }

        private void btnAnimate_Click(object sender, RoutedEventArgs e)
        {
            btnAnimate.IsEnabled = false;
            timer.IsEnabled = true;
            timer.Start();
        }

        private async void Timer_Tick(object sender, EventArgs e)
        {
            if (timer.Interval == TimeSpan.FromSeconds(3))
            {
                timer.Stop();
            }

            Dispatcher.Invoke(() =>
            {
                double move = grdGrid.ActualWidth / 30;
                //var margin = lblLookAtMe.Margin;
                //margin.Left += move;
                //lblLookAtMe.Margin = margin;
            });
        }

        //private void lblLabel_Click(object sender, System.Windows.Input.MouseButtonEventArgs e)
        //{
        //    if ((string)lblLookAtMe.Content == "Look at me")
        //    {
        //        lblLookAtMe.Content = "Ha!";
        //    }
        //    else
        //    {
        //        lblLookAtMe.Content = "Look at me";
        //    }
        //}
    }
}