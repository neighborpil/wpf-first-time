using System.ComponentModel;
using System.Windows.Media;
using UiDesktopApp1.ViewModels.Pages;
using Wpf.Ui.Abstractions.Controls;

namespace UiDesktopApp1.Views.Pages
{
    public partial class DashboardPage : INavigableView<DashboardViewModel>
    {
        public DashboardViewModel ViewModel { get; }

        public DashboardPage(DashboardViewModel viewModel)
        {
            ViewModel = viewModel;
            DataContext = this;

            ViewModel.PropertyChanged += ViewModelOnPropertyChanged; 

            InitializeComponent();
        }

        private void ViewModelOnPropertyChanged(object? sender, PropertyChangedEventArgs e)
        {
            switch (e.PropertyName)
            {
                case "Text":
                    this.btnClickMe.Background = new SolidColorBrush(Colors.Orange);
                    this.btnClickMe.Foreground = new SolidColorBrush(Colors.Blue);
                    break;
                default:
                    break;
            }
        }
    }
}
