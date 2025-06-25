import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallet_hunter/core/ui/theme.dart';
import 'package:wallet_hunter/core/ui/theme/theme_event.dart';
import 'package:wallet_hunter/core/ui/theme/theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(_initialTheme()) {
    on<ToggleThemeEvent>((event, emit) {
      final newTheme = _compileThemeData(event.themeValue);
      emit(ThemeState(themeData: newTheme, themeValue: event.themeValue));
    });
  }

  static ThemeState _initialTheme() {
    return ThemeState(
      themeData: _compileThemeData('light'),
      themeValue: 'light',
    );
  }

  static ThemeData _compileThemeData(String themeValue) {
    final colorScheme = themeValue == 'light'
        ? AppColorSchemes.lightColorScheme
        : AppColorSchemes.darkColorScheme;

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      brightness: colorScheme.brightness,
      appBarTheme: AppBarTheme(
        shadowColor: colorScheme.primary.withOpacity(0.5),
        elevation: 0,
        backgroundColor: ColorConst.white,
        foregroundColor: ColorConst.blackText,
        surfaceTintColor: ColorConst.white,
        titleTextStyle: TextStyle(
          color: ColorConst.blackText,
          fontSize: 24.sp,
          fontWeight: AppFontWeight.bold,
        ),
      ),
      scaffoldBackgroundColor: ColorConst.white,
      sliderTheme: const SliderThemeData(
        showValueIndicator: ShowValueIndicator.always,
      ),
      inputDecorationTheme: const InputDecorationTheme(
        errorStyle: TextStyle(color: ColorConst.errorRed),
      ),
    );
  }
}