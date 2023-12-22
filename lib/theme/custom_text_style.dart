import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeNotoSansBlack900 =>
      theme.textTheme.bodyLarge!.notoSans.copyWith(
        color: appTheme.black900,
        fontSize: 16.fSize,
      );
  static get bodyMediumInterGray700 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.gray700,
        fontSize: 14.fSize,
      );
  static get bodyMediumInterPrimary =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14.fSize,
      );
  static get bodySmallGray5001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray5001,
      );
  static get bodySmallInterCyan300 => theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.cyan300,
      );
  static get bodySmallInterErrorContainer =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodySmallInterGray700 => theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray700,
      );
  static get bodySmallNotoSansBlack900 =>
      theme.textTheme.bodySmall!.notoSans.copyWith(
        color: appTheme.black900,
        fontSize: 11.fSize,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallPrimary_1 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Headline text style
  static get headlineSmallGray50 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray50,
        fontWeight: FontWeight.w700,
      );
  // Label text style
  static get labelLargeGray700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeNotoSansBlack900 =>
      theme.textTheme.labelLarge!.notoSans.copyWith(
        color: appTheme.black900,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeNotoSansBlack900Bold =>
      theme.textTheme.labelLarge!.notoSans.copyWith(
        color: appTheme.black900,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargePoppinsIndigoA200 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.indigoA200,
        fontWeight: FontWeight.w700,
      );
  static get labelLargePoppinsPrimary =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumCyan100 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.cyan100,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumGray700 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray700,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumGray700SemiBold =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get labelSmall9 => theme.textTheme.labelSmall!.copyWith(
        fontSize: 9.fSize,
      );
  static get labelSmallBluegray100 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.blueGray100,
      );
  static get labelSmallCyan300 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.cyan300,
      );
  static get labelSmallCyan3009 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.cyan300,
        fontSize: 9.fSize,
      );
  // Title text style
  static get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 16.fSize,
      );
  static get titleMediumCyan300 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.cyan300,
        fontSize: 16.fSize,
      );
  static get titleMediumNotoSansBlack900 =>
      theme.textTheme.titleMedium!.notoSans.copyWith(
        color: appTheme.black900,
        fontSize: 16.fSize,
      );
  static get titleMediumNotoSansBlue600 =>
      theme.textTheme.titleMedium!.notoSans.copyWith(
        color: appTheme.blue600,
        fontSize: 16.fSize,
      );
  static get titleMediumNotoSansLightblue900 =>
      theme.textTheme.titleMedium!.notoSans.copyWith(
        color: appTheme.lightBlue900,
        fontSize: 16.fSize,
      );
  static get titleMediumPoppinsOnErrorContainer =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPoppinsOnPrimary =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumPrimary16 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
      );
  static get titleSmallGray700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray700,
      );
  static get titleSmallTeal300 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.teal300,
      );
  static get titleSmall_1 => theme.textTheme.titleSmall!;
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get mistral {
    return copyWith(
      fontFamily: 'Mistral',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get notoSans {
    return copyWith(
      fontFamily: 'Noto Sans',
    );
  }
}
