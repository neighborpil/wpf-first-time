using UiDesktopApp1.interfaces;

namespace UiDesktopApp1.ViewModels.Pages
{
    public partial class DashboardViewModel : ObservableObject
    {

        private readonly IDateTime _iDateTime;

        [ObservableProperty]
        private string? _text = string.Empty;

        [ObservableProperty]
        private int _counter = 0;

        [ObservableProperty]
        private string? _currentTime = string.Empty;

        public DashboardViewModel(IDateTime iDateTime)
        {
            this._iDateTime = iDateTime;
        }

        [RelayCommand]
        private void OnCounterIncrement()
        {
            // Counter++;
            this.Text = "Clicked!!";
        }

        [RelayCommand]
        private void TextChanged()
        {
            CurrentTime = _iDateTime.GetCurrentTime().ToString();
        }
    }
}
