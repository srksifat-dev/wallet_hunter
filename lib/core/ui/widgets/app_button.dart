import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallet_hunter/core/extensions/extensions.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    this.label,
    this.labelTextStyle,
    this.bgColor,
    this.fgColor,
    this.borderRadius,
    this.isFilled = true,
    this.borderColor,
    this.onTap,
    this.child,
    this.prefix,
    this.suffix,
    this.horizontalPadding,
    this.verticalPadding,
    this.height,
    this.width,
    this.isLoading = false,
    this.loadingSize,
    this.icon,
    this.iconSize,
    this.isExpanded = true,
    this.gapBetweenPrefix,
    this.gapBetweenSuffix,
    this.isDisabled = false,
    this.disableCallBack,
    this.loader,
  });

  factory AppButton.filled({
    required void Function()? onTap,
    void Function()? disableCallBack,
    String? label,
    TextStyle? labelTextStyle,
    Color? bgColor,
    Color? fgColor,
    double? height,
    double? width,
    double? borderRadius,
    double? horizontalPadding,
    double? verticalPadding,
    Color? borderColor,
    Widget? child,
    Widget? prefix,
    Widget? suffix,
    bool isLoading = false,
    double? loadingSize,
    bool isExpanded = true,
    double? gapBetweenPrefix,
    double? gapBetweenSuffix,
    bool isDisabled = false,
    Widget? loader,
  }) {
    return AppButton(
      height: height,
      label: label,
      bgColor: bgColor,
      fgColor: fgColor,
      borderColor: borderColor,
      borderRadius: borderRadius,
      horizontalPadding: horizontalPadding,
      labelTextStyle: labelTextStyle,
      onTap: onTap,
      prefix: prefix,
      suffix: suffix,
      verticalPadding: verticalPadding,
      isLoading: isLoading,
      loadingSize: loadingSize,
      isExpanded: isExpanded,
      gapBetweenPrefix: gapBetweenPrefix,
      gapBetweenSuffix: gapBetweenSuffix,
      isDisabled: isDisabled,
      disableCallBack: disableCallBack,
      loader: loader,
      child: child,
    );
  }

  factory AppButton.outlined({
    required void Function()? onTap,
    void Function()? disableCallBack,
    String? label,
    TextStyle? labelTextStyle,
    Color? fgColor,
    double? height,
    double? width,
    double? borderRadius,
    double? horizontalPadding,
    double? verticalPadding,
    Color? borderColor,
    Widget? child,
    Widget? prefix,
    Widget? suffix,
    bool isLoading = false,
    double? loadingSize,
    bool isExpanded = true,
    double? gapBetweenPrefix,
    double? gapBetweenSuffix,
    bool isDisabled = false,
    Widget? loader,
  }) {
    return AppButton(
      label: label,
      disableCallBack: disableCallBack,
      isFilled: false,
      borderColor: borderColor,
      height: height,
      width: width,
      borderRadius: borderRadius,
      fgColor: fgColor,
      horizontalPadding: horizontalPadding,
      labelTextStyle: labelTextStyle,
      prefix: prefix,
      onTap: onTap,
      suffix: suffix,
      verticalPadding: verticalPadding,
      isLoading: isLoading,
      loadingSize: loadingSize,
      isExpanded: isExpanded,
      gapBetweenPrefix: gapBetweenPrefix,
      gapBetweenSuffix: gapBetweenSuffix,
      isDisabled: isDisabled,
      loader: loader,
      child: child,
    );
  }

  factory AppButton.text({
    required void Function()? onTap,
    void Function()? disableCallBack,
    String? label,
    TextStyle? labelTextStyle,
    Color? fgColor,
    double? borderRadius,
    bool isLoading = false,
    double? loadingSize,
    bool isExpanded = true,
    bool isDisabled = false,
    Widget? prefix,
    Widget? suffix,
    Widget? loader,
    double? horizontalPadding,
    double? verticalPadding,
  }) {
    return AppButton(
      label: label,
      disableCallBack: disableCallBack,
      isFilled: false,
      borderRadius: borderRadius,
      fgColor: fgColor,
      labelTextStyle: labelTextStyle,
      onTap: onTap,
      prefix: prefix,
      suffix: suffix,
      isLoading: isLoading,
      loadingSize: loadingSize,
      horizontalPadding: horizontalPadding,
      verticalPadding: verticalPadding,
      isExpanded: isExpanded,
      isDisabled: isDisabled,
      loader: loader,
    );
  }

  factory AppButton.icon({
    required Widget icon,
    required void Function()? onTap,
    void Function()? disableCallBack,
    String? label,
    TextStyle? labelTextStyle,
    Color? fgColor,
    double? iconSize,
    double? borderRadius,
    bool isLoading = false,
    double? loadingSize,
    double? horizontalPadding,
    double? verticalPadding,
    bool isExpanded = true,
    bool isDisabled = false,
    Widget? loader,
  }) {
    return AppButton(
      label: label ?? '',
      disableCallBack: disableCallBack,
      isFilled: false,
      borderRadius: borderRadius,
      fgColor: fgColor,
      labelTextStyle: labelTextStyle,
      onTap: onTap,
      icon: icon,
      iconSize: iconSize,
      isLoading: isLoading,
      loadingSize: loadingSize,
      horizontalPadding: horizontalPadding,
      verticalPadding: verticalPadding,
      isExpanded: isExpanded,
      isDisabled: isDisabled,
      loader: loader,
    );
  }

  final String? label;
  final TextStyle? labelTextStyle;
  final Color? bgColor;
  final Color? fgColor;
  final double? height;
  final double? width;
  final double? borderRadius;
  final double? horizontalPadding;
  final double? verticalPadding;
  final bool isFilled;
  final Color? borderColor;
  final void Function()? onTap;
  final void Function()? disableCallBack;
  final Widget? child;
  final Widget? prefix;
  final Widget? suffix;
  final bool isLoading;
  final double? loadingSize;
  final Widget? icon;
  final double? iconSize;
  final double? gapBetweenPrefix;
  final double? gapBetweenSuffix;
  final bool isExpanded;
  final bool isDisabled;
  final Widget? loader;

  @override
  Widget build(BuildContext context) {
    final foregroundColor =
        isFilled
            ? fgColor ?? context.appTheme.background
            : fgColor ?? context.appTheme.primary;

    return InkWell(
      onTap:
          isDisabled
              ? disableCallBack ?? () {}
              : isLoading
              ? null
              : onTap,
      borderRadius: BorderRadius.circular(borderRadius ?? 12.r),
      child: Container(
        height: height ?? 48.h,
        width: isExpanded == true ? double.infinity : width,
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding ?? 16.w,
          vertical: verticalPadding ?? 4.h,
        ),
        decoration: BoxDecoration(
          color:
              isDisabled
                  ? context.appTheme.disabledColor
                  : isFilled
                  ? bgColor ?? context.appTheme.primary
                  : context.appTheme.transparent,
          borderRadius: BorderRadius.circular(borderRadius ?? 12.r),
          border: borderColor != null ? Border.all(color: borderColor!) : null,
        ),
        child:
            isLoading
                ? Center(
                  child: SizedBox(
                    height: loadingSize ?? 20.h,
                    width: loadingSize ?? 20.h,
                    child:
                        loader.isNotNull
                            ? loader
                            : CircularProgressIndicator(
                              color: foregroundColor,
                              strokeWidth: 2,
                            ),
                  ),
                )
                : child ??
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (icon != null) ...[icon!],
                        if (prefix != null) ...[
                          prefix!,
                          SizedBox(width: gapBetweenPrefix?.w ?? 8.w),
                        ],
                        if (label.isNotNull && label != '') ...[
                          Flexible(
                            child: Text(
                              label!,
                              style:
                                  labelTextStyle ??
                                  context.texts.bodyText1.copyWith(
                                    color: context.appTheme.background,
                                  ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                        if (suffix != null) ...[
                          SizedBox(width: gapBetweenSuffix?.w ?? 8.w),
                          suffix!,
                        ],
                      ],
                    ),
      ),
    );
  }
}
