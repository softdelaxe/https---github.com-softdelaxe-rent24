import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body style
  static get bodyLargeUbuntu => theme.textTheme.bodyLarge!.ubuntu;
  static get bodyMediumRaleway => theme.textTheme.bodyMedium!.raleway;
  // Headline text style
  static get headlineLargeSansation =>
      theme.textTheme.headlineLarge!.sansation.copyWith(
        fontSize: 32.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineLargeUbuntuOnPrimary =>
      theme.textTheme.headlineLarge!.ubuntu.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallBluegray900 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w800,
      );
  static get headlineSmallExtraBold => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w800,
      );
  static get headlineSmallSansationOnPrimary =>
      theme.textTheme.headlineSmall!.sansation.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get headlineSmallSansationPrimary =>
      theme.textTheme.headlineSmall!.sansation.copyWith(
        color: theme.colorScheme.primary,
      );
  // Label text style
  static get labelLargeGray40002 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray40002,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeInterGray300 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.gray300,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeInterGray400 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.gray400,
        fontWeight: FontWeight.w700,
      );
  // Title text style
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
      );
  static get titleLargeBlack900Bold => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeBlack900SemiBold => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeBlack900SemiBold_1 =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeBlack900_1 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
      );
  static get titleLargeBluegray10002 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray10002,
      );
  static get titleLargeBluegray900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleLargeBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargeInterBlack900 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeInterOnPrimary =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeOnPrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleLargePrimary_1 => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleLargeSansationBlack900 =>
      theme.textTheme.titleLarge!.sansation.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeUbuntu => theme.textTheme.titleLarge!.ubuntu.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargeUbuntuBlack900 =>
      theme.textTheme.titleLarge!.ubuntu.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeUbuntuGray900 =>
      theme.textTheme.titleLarge!.ubuntu.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeUbuntuPrimary =>
      theme.textTheme.titleLarge!.ubuntu.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray50001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50001,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGray80001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray80001,
        fontSize: 16.fSize,
      );
  static get titleMediumGray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumInterBlack900 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumInterOnPrimary =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumInterOnPrimary_1 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleMediumInterPrimary =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
      );
  static get titleMediumInterPrimarySemiBold =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumNunito => theme.textTheme.titleMedium!.nunito.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumNunitoBlack900 =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumNunitoBlack900ExtraBold =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumNunitoBlack900ExtraBold_1 =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumNunitoBlack900SemiBold =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumNunitoBlack900_1 =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumNunitoExtraBold =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        fontWeight: FontWeight.w800,
      );
  static get titleMediumNunitoGray40002 =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        color: appTheme.gray40002,
      );
  static get titleMediumNunitoGray4000216 =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        color: appTheme.gray40002,
        fontSize: 16.fSize,
      );
  static get titleMediumNunitoGray40002ExtraBold =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        color: appTheme.gray40002,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumNunitoGray40002SemiBold =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        color: appTheme.gray40002,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumNunitoGray5002 =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        color: appTheme.gray5002,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumNunitoGray600 =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        color: appTheme.gray600,
      );
  static get titleMediumNunitoGray800 =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        color: appTheme.gray800,
      );
  static get titleMediumNunitoGray80001 =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        color: appTheme.gray80001,
      );
  static get titleMediumNunitoGray80001SemiBold =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        color: appTheme.gray80001,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumNunitoOnPrimary =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleMediumNunitoOnPrimaryExtraBold =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumNunitoPrimary =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumNunitoPrimaryExtraBold =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumNunitoWhiteA700 =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleMediumNunitoWhiteA700ExtraBold =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumNunitoWhiteA700SemiBold =>
      theme.textTheme.titleMedium!.nunito.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumNunito_1 => theme.textTheme.titleMedium!.nunito;
  static get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
      );
  static get titleMediumRalewayBlack900 =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumRalewayBlack900SemiBold =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumRalewayGray50002 =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        color: appTheme.gray50002,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSansationBlack900 =>
      theme.textTheme.titleMedium!.sansation.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumSansationBluegray900 =>
      theme.textTheme.titleMedium!.sansation.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleMediumSansationWhiteA700 =>
      theme.textTheme.titleMedium!.sansation.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleSmallNunito => theme.textTheme.titleSmall!.nunito.copyWith(
        fontSize: 15.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleSmallNunitoBlack900 =>
      theme.textTheme.titleSmall!.nunito.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallNunitoBlack900Bold =>
      theme.textTheme.titleSmall!.nunito.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallNunitoBlack900Bold15 =>
      theme.textTheme.titleSmall!.nunito.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallNunitoBlack900ExtraBold =>
      theme.textTheme.titleSmall!.nunito.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleSmallNunitoBlack900ExtraBold15 =>
      theme.textTheme.titleSmall!.nunito.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleSmallNunitoBluegray10001 =>
      theme.textTheme.titleSmall!.nunito.copyWith(
        color: appTheme.blueGray10001,
        fontWeight: FontWeight.w800,
      );
  static get titleSmallNunitoGray40003 =>
      theme.textTheme.titleSmall!.nunito.copyWith(
        color: appTheme.gray40003,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallNunitoGray40004 =>
      theme.textTheme.titleSmall!.nunito.copyWith(
        color: appTheme.gray40004,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleSmallNunitoGray800 =>
      theme.textTheme.titleSmall!.nunito.copyWith(
        color: appTheme.gray800,
        fontSize: 15.fSize,
      );
  static get titleSmallNunitoGray80001 =>
      theme.textTheme.titleSmall!.nunito.copyWith(
        color: appTheme.gray80001,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallNunitoGray80001SemiBold =>
      theme.textTheme.titleSmall!.nunito.copyWith(
        color: appTheme.gray80001,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallNunitoOnPrimaryContainer =>
      theme.textTheme.titleSmall!.nunito.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 15.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleSmallNunitoOnPrimaryContainerBold =>
      theme.textTheme.titleSmall!.nunito.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallNunitoPrimary =>
      theme.textTheme.titleSmall!.nunito.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallNunitoPrimaryBold =>
      theme.textTheme.titleSmall!.nunito.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallNunitoPrimaryExtraBold =>
      theme.textTheme.titleSmall!.nunito.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleSmallNunitoPrimaryExtraBold15 =>
      theme.textTheme.titleSmall!.nunito.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleSmallNunitoWhiteA700 =>
      theme.textTheme.titleSmall!.nunito.copyWith(
        color: appTheme.whiteA700.withOpacity(0.6),
        fontSize: 15.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleSmallNunitoWhiteA700ExtraBold =>
      theme.textTheme.titleSmall!.nunito.copyWith(
        color: appTheme.whiteA700,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleSmallNunitoWhiteA700ExtraBold15 =>
      theme.textTheme.titleSmall!.nunito.copyWith(
        color: appTheme.whiteA700,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleSmallNunitoWhiteA700SemiBold =>
      theme.textTheme.titleSmall!.nunito.copyWith(
        color: appTheme.whiteA700,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallNunitoWhiteA700SemiBold15 =>
      theme.textTheme.titleSmall!.nunito.copyWith(
        color: appTheme.whiteA700,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallOnPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallOnPrimarySemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallRalewayBlack900 =>
      theme.textTheme.titleSmall!.raleway.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallSansation =>
      theme.textTheme.titleSmall!.sansation.copyWith(
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallSansationBlack900 =>
      theme.textTheme.titleSmall!.sansation.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallSansationGray20001 =>
      theme.textTheme.titleSmall!.sansation.copyWith(
        color: appTheme.gray20001,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallSansationGray800 =>
      theme.textTheme.titleSmall!.sansation.copyWith(
        color: appTheme.gray800,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallSansationGray800Bold =>
      theme.textTheme.titleSmall!.sansation.copyWith(
        color: appTheme.gray800,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallSansationGray800Bold15 =>
      theme.textTheme.titleSmall!.sansation.copyWith(
        color: appTheme.gray800,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallSansationOnPrimary =>
      theme.textTheme.titleSmall!.sansation.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallSansationWhiteA700 =>
      theme.textTheme.titleSmall!.sansation.copyWith(
        color: appTheme.whiteA700,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallUbuntu => theme.textTheme.titleSmall!.ubuntu.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleSmallUbuntuAmber500 =>
      theme.textTheme.titleSmall!.ubuntu.copyWith(
        color: appTheme.amber500,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallUbuntuBluegray100 =>
      theme.textTheme.titleSmall!.ubuntu.copyWith(
        color: appTheme.blueGray100,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallUbuntuGray500 =>
      theme.textTheme.titleSmall!.ubuntu.copyWith(
        color: appTheme.gray500,
      );
  static get titleSmallUbuntuPrimary =>
      theme.textTheme.titleSmall!.ubuntu.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get raleway {
    return copyWith(
      fontFamily: 'Raleway',
    );
  }

  TextStyle get sansation {
    return copyWith(
      fontFamily: 'Sansation',
    );
  }

  TextStyle get ubuntu {
    return copyWith(
      fontFamily: 'Ubuntu',
    );
  }

  TextStyle get nunito {
    return copyWith(
      fontFamily: 'Nunito',
    );
  }
}
