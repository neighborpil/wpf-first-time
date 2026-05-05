using UiDesktopApp1.interfaces;

namespace UiDesktopApp1.Services;

public class DateTimeService : IDateTime
{
    public DateTime? GetCurrentTime()
    {
        return DateTime.Now;
    }
}