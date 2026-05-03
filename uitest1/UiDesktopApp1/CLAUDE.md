# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Build & Run

```bash
dotnet build
dotnet run
```

Target framework: `net10.0-windows`. No test projects exist.

## Architecture

This is a WPF application using the **MVVM pattern** with .NET Generic Host for dependency injection.

### Startup Flow

`App.xaml.cs` registers all services into an `IServiceProvider`, then `ApplicationHostService` (an `IHostedService`) creates `MainWindow` on startup. `MainWindow` navigates to `DashboardPage` as the initial page.

### Folder Structure

- **Views/Windows** / **Views/Pages** — XAML views; code-behind files implement `INavigableView<TViewModel>` from WPF-UI
- **ViewModels/Windows** / **ViewModels/Pages** — inherit `ObservableObject`; use `[ObservableProperty]` and `[RelayCommand]` source generators from CommunityToolkit.Mvvm
- **Models** — plain data classes (`AppConfig`, `DataColor`)
- **Services** — `ApplicationHostService` manages window lifecycle
- **Helpers** — `EnumToBooleanConverter` for radio button bindings

### Key Libraries

| Package | Version | Purpose |
|---|---|---|
| WPF-UI | 4.2.0 | Fluent Design UI (FluentWindow, NavigationView, SnackbarPresenter) |
| WPF-UI.DependencyInjection | 4.2.0 | Wires WPF-UI navigation/services into the DI container |
| Microsoft.Extensions.Hosting | 10.0.1 | .NET Generic Host for app lifecycle and DI |
| CommunityToolkit.Mvvm | 8.4.0 | Source-generated MVVM (ObservableObject, RelayCommand) |

### Navigation

Navigation is handled by WPF-UI's `INavigationService`. Pages are registered as `NavigationViewPageProvider` entries in DI. To add a new page: create the View + ViewModel pair, register both in `App.xaml.cs`, and add a `NavigationViewItem` in `MainWindow.xaml`.

### Adding a ViewModel Property

Use the source generator pattern — declare a private field with `[ObservableProperty]` and the public property is generated automatically:

```csharp
[ObservableProperty]
private string _myValue = string.Empty;
```

### Theme Switching

`SettingsViewModel` calls `ApplicationThemeManager.Apply()` to switch Light/Dark. The current theme is reflected via radio buttons bound through `EnumToBooleanConverter`.
