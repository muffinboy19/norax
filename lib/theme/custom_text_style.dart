import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBluegray700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray700,
      );
  static get bodyLargeInterBluegray30001 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.blueGray30001,
      );
  static get bodyLargeMontserratBluegray800 =>
      theme.textTheme.bodyLarge!.montserrat.copyWith(
        color: appTheme.blueGray800,
      );
  static get bodyLargeMontserratGreen300 =>
      theme.textTheme.bodyLarge!.montserrat.copyWith(
        color: appTheme.green300,
      );
  static get bodyLargeff4e4b66 => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XFF4E4B66),
      );
  static get bodyMedium14 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 14.fSize,
      );
  static get bodyMediumInterBluegray30001 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.blueGray30001,
        fontSize: 14.fSize,
      );
  static get bodyMediumInterGray10001 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.gray10001,
        fontSize: 14.fSize,
      );
  static get bodyMediumInterOnPrimary =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 14.fSize,
      );
  static get bodyMediumMontserratBluegray30001 =>
      theme.textTheme.bodyMedium!.montserrat.copyWith(
        color: appTheme.blueGray30001,
        fontSize: 14.fSize,
      );
  static get bodyMediumMontserratGray10001 =>
      theme.textTheme.bodyMedium!.montserrat.copyWith(
        color: appTheme.gray10001,
        fontSize: 14.fSize,
      );
  static get bodyMediumMontserratGreenA400 =>
      theme.textTheme.bodyMedium!.montserrat.copyWith(
        color: appTheme.greenA400,
        fontSize: 14.fSize,
      );
  static get bodyMediumMontserratOnPrimary =>
      theme.textTheme.bodyMedium!.montserrat.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 14.fSize,
      );
  static get bodySmallBluegray400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 12.fSize,
      );
  static get bodySmallBluegray400Light => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallInterBluegray30001 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.blueGray30001,
        fontSize: 12.fSize,
      );
  static get bodySmallInterGreen300 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.green300,
      );
  static get bodySmallMontserratBluegray30001 =>
      theme.textTheme.bodySmall!.montserrat.copyWith(
        color: appTheme.blueGray30001,
        fontSize: 12.fSize,
      );
  static get bodySmallMontserratff2dcc70 =>
      theme.textTheme.bodySmall!.montserrat.copyWith(
        color: Color(0XFF2DCC70),
        fontSize: 12.fSize,
      );
  static get bodySmallMontserratff80d48f =>
      theme.textTheme.bodySmall!.montserrat.copyWith(
        color: Color(0XFF80D48F),
      );
  static get bodySmallMontserratffa1a4b2 =>
      theme.textTheme.bodySmall!.montserrat.copyWith(
        color: Color(0XFFA1A4B2),
        fontSize: 12.fSize,
      );
  static get bodySmallNunitoff868889 =>
      theme.textTheme.bodySmall!.nunito.copyWith(
        color: Color(0XFF868889),
        fontSize: 11.fSize,
      );
  // Display text style
  static get displayMediumOnPrimaryContainer =>
      theme.textTheme.displayMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  // Headline text style
  static get headlineLargePoppins =>
      theme.textTheme.headlineLarge!.poppins.copyWith(
        fontSize: 32.fSize,
      );
  static get headlineSmallBluegray30001 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.blueGray30001,
      );
  static get headlineSmallPoppinsBlack90001 =>
      theme.textTheme.headlineSmall!.poppins.copyWith(
        color: appTheme.black90001,
        fontSize: 24.fSize,
        fontWeight: FontWeight.w400,
      );
  // Inter text style
  static get interBlack900 => TextStyle(
        color: appTheme.black900,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w700,
      ).inter;
  static get interBluegray300 => TextStyle(
        color: appTheme.blueGray300,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).inter;
  static get interBluegray400 => TextStyle(
        color: appTheme.blueGray400,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).inter;
  static get interBluegray400Bold => TextStyle(
        color: appTheme.blueGray400,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w700,
      ).inter;
  // Label text style
  static get labelLargeBluegray400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 13.fSize,
      );
  static get labelLargeBluegray700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray700,
        fontSize: 13.fSize,
      );
  static get labelLargeErrorContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get labelLargeGreen60001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.green60001,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w900,
      );
  static get labelLargeMedium => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get labelMediumDMSansGray500 =>
      theme.textTheme.labelMedium!.dMSans.copyWith(
        color: appTheme.gray500,
      );
  static get labelMediumMontserratGreenA400 =>
      theme.textTheme.labelMedium!.montserrat.copyWith(
        color: appTheme.greenA400,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumMontserratff2dcc70 =>
      theme.textTheme.labelMedium!.montserrat.copyWith(
        color: Color(0XFF2DCC70),
        fontWeight: FontWeight.w700,
      );
  static get labelMediumNunito => theme.textTheme.labelMedium!.nunito.copyWith(
        fontSize: 11.fSize,
      );
  static get labelMediumNunitoff868889 =>
      theme.textTheme.labelMedium!.nunito.copyWith(
        color: Color(0XFF868889),
        fontSize: 11.fSize,
        fontWeight: FontWeight.w700,
      );
  // Title text style
  static get titleLargeDMSansGreen60001 =>
      theme.textTheme.titleLarge!.dMSans.copyWith(
        color: appTheme.green60001,
        fontSize: 22.fSize,
      );
  static get titleLargeGray10002 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray10002,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeGreen30001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.green30001,
      );
  static get titleLargeInter => theme.textTheme.titleLarge!.inter.copyWith(
        fontSize: 22.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeInterGray10001 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.gray10001,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeInterGray10001Medium =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.gray10001,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleLargePoppins => theme.textTheme.titleLarge!.poppins.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );
  static get titleMediumGreen60001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.green60001,
      );
  static get titleMediumNunitoPrimaryContainer =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleMediumPoppinsBlack90001 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.black90001,
      );
  static get titleMediumPoppinsBlack90001Medium =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.black90001,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsBlack90001SemiBold =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPoppinsBlack90001SemiBold18 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.black90001,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPoppinsGreenA400 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.greenA400,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsff4e4b66 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: Color(0XFF4E4B66),
      );
  static get titleSmallBlack90001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBlack90001SemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallGreen60001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.green60001,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get dMSans {
    return copyWith(
      fontFamily: 'DM Sans',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get nunito {
    return copyWith(
      fontFamily: 'Nunito',
    );
  }
}
