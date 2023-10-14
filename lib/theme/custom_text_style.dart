import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeBluegray400 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 18.fSize,
      );
  static get bodyLargeBluegray40001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray40001,
      );
  static get bodyLargeBluegray400_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodyLargeInterBluegray800 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.blueGray800,
        fontSize: 18.fSize,
      );
  static get bodyMediumBluegray40001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray40001,
        fontSize: 13.fSize,
      );
  static get bodyMediumBluegray40001_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray40001,
      );
  static get bodyMediumInterBluegray700 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.blueGray700,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w200,
      );
  static get bodyMediumOnSecondaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
      );
  static get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallBluegray40001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray40001,
        fontSize: 12.fSize,
      );
  static get bodySmallGreen50 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.green50,
      );
  static get bodySmallInterBluegray30002 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.blueGray30002,
        fontSize: 12.fSize,
      );
  static get bodySmallInterGray600 => theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray600,
        fontSize: 10.fSize,
      );
  static get bodySmallLightblue50 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.lightBlue50,
      );
  static get bodySmallOnErrorContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get bodySmallOnSecondaryContainer =>
      theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallOnSecondaryContainer12 =>
      theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
        fontSize: 12.fSize,
      );
  static get bodySmallOrange50 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.orange50,
      );
  // Headline text style
  static get headlineSmallOnErrorContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get headlineSmallOnSecondaryContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  // Label text style
  static get labelLargeBluegray400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray400,
      );
  static get labelLargeInterBluegray900 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.blueGray900,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeInterGray600 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.gray600,
        fontSize: 12.fSize,
      );
  static get labelLargeInterSecondaryContainer =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Title text style
  static get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumInterBluegray700 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.blueGray700,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumInterBluegray800 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.blueGray800,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumInterGray400 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray400,
        fontSize: 16.fSize,
      );
  static get titleMediumInterOnErrorContainer =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOnErrorContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOnErrorContainer16 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 16.fSize,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBluegray400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray400,
      );
  static get titleSmallInterBluegray30001 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.blueGray30001,
        fontSize: 15.fSize,
      );
  static get titleSmallInterBluegray700 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.blueGray700,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallInterBluegray900 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallInterErrorContainer =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 15.fSize,
      );
  static get titleSmallOnErrorContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get titleSmallOnSecondaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallRed300 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.red300,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallSemiBold => theme.textTheme.titleSmall!.copyWith(
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
