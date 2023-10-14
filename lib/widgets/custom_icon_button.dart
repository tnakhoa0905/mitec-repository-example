import 'package:flutter/material.dart';
import 'package:mitec/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.margin,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final EdgeInsetsGeometry? margin;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => Padding(
        padding: margin ?? EdgeInsets.zero,
        child: SizedBox(
          height: height ?? 0,
          width: width ?? 0,
          child: IconButton(
            padding: EdgeInsets.zero,
            icon: Container(
              padding: padding ?? EdgeInsets.zero,
              decoration: decoration ??
                  BoxDecoration(
                    color: theme.colorScheme.onErrorContainer.withOpacity(1),
                    borderRadius: BorderRadius.circular(21.h),
                    border: Border.all(
                      color: appTheme.blue50,
                      width: 1.h,
                    ),
                  ),
              child: child,
            ),
            onPressed: onTap,
          ),
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get outlineOnErrorContainer => BoxDecoration(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
        borderRadius: BorderRadius.circular(14.h),
        border: Border.all(
          color: theme.colorScheme.onErrorContainer.withOpacity(1),
          width: 1.h,
        ),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get outlineBlueTL21 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        borderRadius: BorderRadius.circular(21.h),
        border: Border.all(
          color: appTheme.blue50,
          width: 1.h,
        ),
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(21.h),
      );
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        borderRadius: BorderRadius.circular(24.h),
        border: Border.all(
          color: appTheme.blueGray300,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlueTL211 => BoxDecoration(
        color: appTheme.red300,
        borderRadius: BorderRadius.circular(21.h),
        border: Border.all(
          color: appTheme.blue50,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGrayA => BoxDecoration(
        color: appTheme.gray5001,
        borderRadius: BorderRadius.circular(21.h),
        border: Border.all(
          color: appTheme.gray5001a,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGrayATL14 => BoxDecoration(
        color: appTheme.gray5001,
        borderRadius: BorderRadius.circular(14.h),
        border: Border.all(
          color: appTheme.gray5001a,
          width: 1.h,
        ),
      );
  static BoxDecoration get fillOnErrorContainer => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        borderRadius: BorderRadius.circular(28.h),
      );
  static BoxDecoration get fillGreenA => BoxDecoration(
        color: appTheme.greenA400,
        borderRadius: BorderRadius.circular(16.h),
      );
  static BoxDecoration get outlineBlueGrayTL19 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        borderRadius: BorderRadius.circular(19.h),
        border: Border.all(
          color: appTheme.blueGray800,
          width: 1.h,
        ),
      );
}
