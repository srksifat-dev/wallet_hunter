import 'package:flutter/material.dart';

class ThemeState {
  final ThemeData themeData;
  final String themeValue;

  const ThemeState({
    required this.themeData,
    required this.themeValue,
  });

  ThemeState copyWith({
    ThemeData? themeData,
    String? themeValue,
  }) {
    return ThemeState(
      themeData: themeData ?? this.themeData,
      themeValue: themeValue ?? this.themeValue,
    );
  }
}