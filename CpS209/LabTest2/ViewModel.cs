using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace LabTest2
{
    public class ViewModel : INotifyPropertyChanged
    {
        private double _calculatedValue;
        public double CalculatedValue
        {
            get => _calculatedValue;
            set
            {
                _calculatedValue = value;
                NotifyPropertyChanged();
            }
        }

        public event PropertyChangedEventHandler PropertyChanged;

        private void NotifyPropertyChanged([CallerMemberName] string propertyName = "")
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
            }
        }
    }
}
