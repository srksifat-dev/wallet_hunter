import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallet_hunter/core/extensions/extensions.dart';

part './colors.dart';
part './typography/font_weights.dart';
part './typography/text_styles.dart';

class AppThemeService {
  AppThemeService(this.context);
  final BuildContext context;
  final AppColors _lightColors = AppColors(
    primary: ColorConst.hunterBlue,
    background: ColorConst.white,
    lightText: ColorConst.lightText,
    darkText: ColorConst.blackText,
    inputDecorBorder: ColorConst.stock,
    shadow: ColorConst.lightText,
    disabledColor: ColorConst.uploadButton,
    unselected: ColorConst.lightText,
    error: ColorConst.errorRed,
    success: ColorConst.successGreen,
    warning: ColorConst.warning,
    transparent: ColorConst.transparent,
    white: ColorConst.white,
  );

  final AppColors _darkColors = AppColors(
    white: ColorConst.white,
    primary: ColorConst.hunterBlue,
    background: ColorConst.white,
    lightText: ColorConst.lightText,
    darkText: ColorConst.blackText,
    inputDecorBorder: ColorConst.stock,
    shadow: ColorConst.lightText,
    disabledColor: ColorConst.uploadButton,
    unselected: ColorConst.lightText,
    error: ColorConst.errorRed,
    success: ColorConst.successGreen,
    warning: ColorConst.warning,
    transparent: ColorConst.transparent,
  );
  AppColors get themeData =>
      Theme.of(context).brightness == Brightness.light
          ? _lightColors
          : _darkColors;
}
