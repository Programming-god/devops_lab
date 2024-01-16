import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLarge19 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 19.fSize,
      );
  static get bodyLargeGray400 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray400,
        fontSize: 17.fSize,
      );
  static get bodyLargeGray400_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray400,
      );
  static get bodyLargeOnPrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 18.fSize,
      );
  static get bodyLargeOnPrimary17 => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 17.fSize,
      );
  static get bodyLargeRedA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.redA700,
        fontSize: 18.fSize,
      );
  static get bodyLargeSignika => theme.textTheme.bodyLarge!.signika.copyWith(
        fontSize: 17.fSize,
      );
  static get bodyLargeSignikaGray400 =>
      theme.textTheme.bodyLarge!.signika.copyWith(
        color: appTheme.gray400,
        fontSize: 18.fSize,
      );
  static get bodyLargeSignikaGray500 =>
      theme.textTheme.bodyLarge!.signika.copyWith(
        color: appTheme.gray500,
        fontSize: 17.fSize,
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumBlack90015 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
      );
  static get bodyMediumGray300 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray300,
        fontSize: 15.fSize,
      );
  static get bodyMediumGray60001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray60001,
        fontSize: 13.fSize,
      );
  static get bodyMediumOnPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get bodyMediumOnPrimary13 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 13.fSize,
      );
  static get bodyMediumOnPrimary15 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 15.fSize,
      );
  static get bodyMediumRedA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.redA700,
        fontSize: 13.fSize,
      );
  static get bodyMediumSigmarOneOnPrimary =>
      theme.textTheme.bodyMedium!.sigmarOne.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 13.fSize,
      );
  static get bodySmall11 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 11.fSize,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
        fontSize: 11.fSize,
      );
  static get bodySmallBlack90011 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
        fontSize: 11.fSize,
      );
  static get bodySmallBlack90011_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
        fontSize: 11.fSize,
      );
  static get bodySmallBlack90011_2 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
        fontSize: 11.fSize,
      );
  static get bodySmallBlack90012 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
        fontSize: 12.fSize,
      );
  static get bodySmallBlack9009 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
        fontSize: 9.fSize,
      );
  static get bodySmallBlack9009_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
        fontSize: 9.fSize,
      );
  static get bodySmallDeeporangeA70001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.deepOrangeA70001,
        fontSize: 8.fSize,
      );
  static get bodySmallGray60001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray60001,
      );
  static get bodySmallGray600019 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray60001,
        fontSize: 9.fSize,
      );
  static get bodySmallGray700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray700,
        fontSize: 12.fSize,
      );
  static get bodySmallGray70012 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray700,
        fontSize: 12.fSize,
      );
  static get bodySmallGray800 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray800,
        fontSize: 12.fSize,
      );
  static get bodySmallGray80011 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray800,
        fontSize: 11.fSize,
      );
  static get bodySmallGray8008 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray800,
        fontSize: 8.fSize,
      );
  static get bodySmallGray800_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray800,
      );
  static get bodySmallIndigoA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.indigoA700,
      );
  static get bodySmallInterBlack900 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallInterBlack90012 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.black900,
        fontSize: 12.fSize,
      );
  static get bodySmallInterBlack900Light =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallOnPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get bodySmallOnPrimary12 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 12.fSize,
      );
  static get bodySmallOnPrimary8 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 8.fSize,
      );
  static get bodySmallOnPrimary8_1 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 8.fSize,
      );
  static get bodySmallSeymourOneOnPrimary =>
      theme.textTheme.bodySmall!.seymourOne.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 11.fSize,
      );
  // Display text style
  static get displayMediumRegular => theme.textTheme.displayMedium!.copyWith(
        fontWeight: FontWeight.w400,
      );
  // Headline text style
  static get headlineMediumRanchersBlue900 =>
      theme.textTheme.headlineMedium!.ranchers.copyWith(
        color: appTheme.blue900,
        fontSize: 27.fSize,
      );
  static get headlineMediumRoundedMplus1cBlue900 =>
      theme.textTheme.headlineMedium!.roundedMplus1c.copyWith(
        color: appTheme.blue900,
        fontSize: 27.fSize,
        fontWeight: FontWeight.w800,
      );
  static get headlineMediumRoundedMplus1cBlue900ExtraBold =>
      theme.textTheme.headlineMedium!.roundedMplus1c.copyWith(
        color: appTheme.blue900,
        fontSize: 27.fSize,
        fontWeight: FontWeight.w800,
      );
  static get headlineMediumSegoeUI =>
      theme.textTheme.headlineMedium!.segoeUI.copyWith(
        fontSize: 27.fSize,
      );
  static get headlineSmallOnPrimary => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get headlineSmallRobotoBlack900 =>
      theme.textTheme.headlineSmall!.roboto.copyWith(
        color: appTheme.black900,
        fontSize: 24.fSize,
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallRobotoOnPrimary =>
      theme.textTheme.headlineSmall!.roboto.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 24.fSize,
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallUnkemptBlack900 =>
      theme.textTheme.headlineSmall!.unkempt.copyWith(
        color: appTheme.black900,
        fontSize: 24.fSize,
      );
  static get headlineSmallUnkemptRed500 =>
      theme.textTheme.headlineSmall!.unkempt.copyWith(
        color: appTheme.red500,
        fontSize: 24.fSize,
      );
  // Label text style
  static get labelLargeOnPrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 13.fSize,
      );
  static get labelLarge_1 => theme.textTheme.labelLarge!;
  // Segoe text style
  static get segoeUIGray800 => TextStyle(
        color: appTheme.gray800,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).segoeUI;
  static get segoeUIGray800Regular => TextStyle(
        color: appTheme.gray800,
        fontSize: 5.fSize,
        fontWeight: FontWeight.w400,
      ).segoeUI;
  static get segoeUIOnPrimary => TextStyle(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).segoeUI;
  static get segoeUIOnPrimaryRegular => TextStyle(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 5.fSize,
        fontWeight: FontWeight.w400,
      ).segoeUI;
  // Title text style
  static get titleLargeGray700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeOnPrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get titleLargeOnPrimaryBold => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 21.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeOnPrimaryRegular => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 22.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeSegoeUIHistoricBlue900 =>
      theme.textTheme.titleLarge!.segoeUIHistoric.copyWith(
        color: appTheme.blue900,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumYellow800 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.yellow800,
      );
  static get titleSmallGray800 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray800,
      );
  static get titleSmallInterBlack900 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallInterBlack900_1 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallSFProTextBlack900 =>
      theme.textTheme.titleSmall!.sFProText.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallSemiBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get roundedMplus1c {
    return copyWith(
      fontFamily: 'Rounded Mplus 1c',
    );
  }

  TextStyle get segoeUI {
    return copyWith(
      fontFamily: 'Segoe UI',
    );
  }

  TextStyle get unkempt {
    return copyWith(
      fontFamily: 'Unkempt',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get segoeUIHistoric {
    return copyWith(
      fontFamily: 'Segoe UI Historic',
    );
  }

  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }

  TextStyle get signika {
    return copyWith(
      fontFamily: 'Signika',
    );
  }

  TextStyle get seymourOne {
    return copyWith(
      fontFamily: 'Seymour One',
    );
  }

  TextStyle get ranchers {
    return copyWith(
      fontFamily: 'Ranchers',
    );
  }

  TextStyle get sigmarOne {
    return copyWith(
      fontFamily: 'Sigmar One',
    );
  }
}
