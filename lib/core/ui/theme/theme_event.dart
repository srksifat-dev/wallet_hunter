abstract class ThemeEvent {}

class ToggleThemeEvent extends ThemeEvent {
  final String themeValue;
  ToggleThemeEvent(this.themeValue);
}