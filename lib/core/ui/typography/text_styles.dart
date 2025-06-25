part of '../theme.dart';

class AppTextStyles {
  AppTextStyles(this.context);

  final BuildContext context;

  /// Base text style with dynamic color from the theme's color scheme
  TextStyle get _baseTextStyle {
    return const TextStyle(fontFamily: 'Fustat', fontWeight: AppFontWeight.regular).copyWith(
      color: context.appTheme.darkText, // Dynamic color
    );
  }

  ///32 700
  TextStyle get headline1 {
    return _baseTextStyle.copyWith(fontSize: 32.sp, fontWeight: AppFontWeight.bold);
  }

  ///24 600
  TextStyle get headline2 {
    return _baseTextStyle.copyWith(fontSize: 24.sp, fontWeight: AppFontWeight.semiBold);
  }

  ///22 600
  TextStyle get headline3 {
    return _baseTextStyle.copyWith(fontSize: 22.sp, fontWeight: AppFontWeight.semiBold);
  }

  ///20 600
  TextStyle get headline4 {
    return _baseTextStyle.copyWith(fontSize: 20.sp, fontWeight: AppFontWeight.semiBold);
  }

  ///18 600
  TextStyle get headline5 {
    return _baseTextStyle.copyWith(fontSize: 18.sp, fontWeight: AppFontWeight.semiBold);
  }

  // ///18 700
  // TextStyle get headline6 {
  //   return _baseTextStyle.copyWith(
  //     fontSize: 18.sp,
  //     fontWeight: AppFontWeight.bold,
  //   );
  // }

  ///16 700
  TextStyle get bodyText1 {
    return _baseTextStyle.copyWith(fontSize: 16.sp, fontWeight: AppFontWeight.bold);
  }

  ///16 600
  TextStyle get bodyText2 {
    return _baseTextStyle.copyWith(fontSize: 16.sp, fontWeight: AppFontWeight.semiBold);
  }

  ///14 700
  TextStyle get subtitle1 {
    return _baseTextStyle.copyWith(fontSize: 14.sp, fontWeight: AppFontWeight.bold);
  }

  ///14 600
  TextStyle get subtitle2 {
    return _baseTextStyle.copyWith(fontSize: 14.sp, fontWeight: AppFontWeight.semiBold);
  }

  ///12 700
  TextStyle get caption {
    return _baseTextStyle.copyWith(fontSize: 12.sp, fontWeight: AppFontWeight.bold);
  }

  ///12 600
  TextStyle get caption2 {
    return _baseTextStyle.copyWith(fontSize: 12.sp, fontWeight: AppFontWeight.semiBold);
  }

  ///18 500
  TextStyle get button {
    return _baseTextStyle.copyWith(fontSize: 18.sp, fontWeight: AppFontWeight.medium);
  }

  ///16 400
  TextStyle get overLine {
    return _baseTextStyle.copyWith(fontSize: 16.sp, fontWeight: AppFontWeight.regular);
  }
}
