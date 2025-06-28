part of './theme.dart';

class AppColors {
  AppColors({
    required this.darkText,
    required this.primary,
    required this.background,
    required this.lightText,
    required this.inputDecorBorder,
    required this.shadow,
    required this.disabledColor,
    required this.unselected,
    required this.error,
    required this.success,
    required this.white,
    required this.warning,
    required this.transparent,
  });

  final Color primary;
  final Color background;
  final Color lightText;
  final Color darkText;
  final Color inputDecorBorder;
  final Color shadow;
  final Color disabledColor;
  final Color unselected;
  final Color error;
  final Color success;
  final Color warning;
  final Color white;
  final Color transparent;
}

abstract class AppColorSchemes {
  static const lightColorScheme = ColorScheme.light(
    primary: ColorConst.hunterBlue,
  );
  static const darkColorScheme = ColorScheme.dark(
    primary: ColorConst.hunterBlue,
  );
}

class ColorConst {
  static const Color hunterBlue = Color(0xff5e60ce);
  static const Color errorRed = Color(0xffFF6A62);
  static const Color lightText = Color(0xff6F6C6A);
  static const Color blackText = Color(0xff272B36);
  static const Color transparent = Colors.transparent;
  static const Color successGreen = Color(0xff34C759);
  static const Color success = Color(0xff2EB350);
  static const Color stock = Color(0xffE0E0E0);
  static const Color white = Color(0xffFFFFFF);
  static const Color backColor = Color(0xffF8F8FC);
  static const Color warning = Color(0xffFFB01F);
  static const Color uploadButton = Color(0xffF6F6F6);
  static const Color formHeader = Color(0xffF4F4F4);
  static const Color drawerText = Color(0xff272B35);
  static const Color redWhite = Color(0xffF4ECFB);
  static const Color inReviewColor = Color(0xffFFF0EA);
  static const Color inReviewTextColor = Color(0xffFFB020);
  static const Color scaffoldBackgroundColor = Color(0xFFf3f3f8);
  static const Color inProgress = Color(0xffFF8C00);
}
