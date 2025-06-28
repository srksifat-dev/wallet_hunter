import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallet_hunter/core/extensions/extensions.dart';

class AppInputDecorationStyles {
  const AppInputDecorationStyles(this.context);
  final BuildContext context;
  InputDecoration outlinedInputDecor({
    String? hint,
    void Function()? clearText,
    String? counterText,
    Widget? prefix,
    BorderRadius? borderRadius,
    Widget? suffix,
    Color? focusColor,
    Color? fillColor,
    TextStyle? hintTextStyle,
    String? helperText,
    Widget? label,
    TextStyle? helperTextStyle,
    InputBorder? border,
    InputBorder? enabledBorder,
    InputBorder? focusedErrorBorder,
    InputBorder? errorBorder,
    double? contentHorizontalPadding,
    double? contentVerticalPadding,
  }) {
    return InputDecoration(
      fillColor: fillColor ?? context.appTheme.background,
      prefixIcon: prefix,
      suffixIcon: suffix,
      filled: true,
      counterText: counterText,
      helperText: helperText,
      helperStyle: helperTextStyle,
      focusedBorder: OutlineInputBorder(
        borderRadius: borderRadius ?? BorderRadius.circular(12.r),
        borderSide: BorderSide(color: focusColor ?? context.appTheme.darkText),
      ),
      border:
          border ??
          OutlineInputBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12.r),
            borderSide: BorderSide(
              color: focusColor ?? context.appTheme.inputDecorBorder,
            ),
          ),
      disabledBorder: OutlineInputBorder(
        borderRadius: borderRadius ?? BorderRadius.circular(12.r),
        borderSide: BorderSide(
          color: focusColor ?? context.appTheme.inputDecorBorder,
        ),
      ),

      hintText: hint,
      hintMaxLines: 2,
      hintStyle:
          hintTextStyle ??
          context.texts.subtitle1.copyWith(
            color: context.appTheme.lightText.withValues(alpha: 0.5),
            fontSize: 14.sp,
            fontWeight: FontWeight.normal,
          ),
      label: label,
      labelStyle: context.texts.bodyText2,
      contentPadding: EdgeInsets.symmetric(
        horizontal: contentHorizontalPadding ?? 0.04.sw,
        vertical: contentVerticalPadding ?? 0.03.sw,
      ),
      enabledBorder:
          enabledBorder ??
          OutlineInputBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12.r),
            borderSide: BorderSide(
              color: context.appTheme.inputDecorBorder,
              // color: context.appTheme.inputDecorBorder.withOpacity(0.5),
            ),
          ),
      focusedErrorBorder:
          focusedErrorBorder ??
          OutlineInputBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12.r),
            borderSide: BorderSide(
              color: context.appTheme.error,
              // color: context.appTheme.inputDecorBorder.withOpacity(0.5),
            ),
          ),
      errorBorder:
          errorBorder ??
          OutlineInputBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12.r),
            borderSide: BorderSide(
              color: context.appTheme.error,
              // color: context.appTheme.inputDecorBorder.withOpacity(0.5),
            ),
          ),
      errorMaxLines: 4,
    );
  }
}
