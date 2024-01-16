import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.onPrimary.withOpacity(1),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.lightGreen900,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: appTheme.gray300,
            width: 1.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return colorScheme.onSurface;
        }),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.gray400,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 16.fSize,
          fontFamily: 'Segoe UI',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.gray700,
          fontSize: 14.fSize,
          fontFamily: 'Segoe UI',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.gray600,
          fontSize: 10.fSize,
          fontFamily: 'Segoe UI',
          fontWeight: FontWeight.w400,
        ),
        displayMedium: TextStyle(
          color: appTheme.red500,
          fontSize: 48.fSize,
          fontFamily: 'Unkempt',
          fontWeight: FontWeight.w700,
        ),
        headlineMedium: TextStyle(
          color: appTheme.black900,
          fontSize: 26.fSize,
          fontFamily: 'Signika',
          fontWeight: FontWeight.w400,
        ),
        headlineSmall: TextStyle(
          color: appTheme.redA700,
          fontSize: 25.fSize,
          fontFamily: 'Segoe UI',
          fontWeight: FontWeight.w400,
        ),
        labelLarge: TextStyle(
          color: appTheme.gray700,
          fontSize: 12.fSize,
          fontFamily: 'Segoe UI',
          fontWeight: FontWeight.w700,
        ),
        labelMedium: TextStyle(
          color: appTheme.black900,
          fontSize: 11.fSize,
          fontFamily: 'Segoe UI',
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 20.fSize,
          fontFamily: 'Segoe UI',
          fontWeight: FontWeight.w600,
        ),
        titleMedium: TextStyle(
          color: appTheme.gray700,
          fontSize: 16.fSize,
          fontFamily: 'Segoe UI',
          fontWeight: FontWeight.w700,
        ),
        titleSmall: TextStyle(
          color: colorScheme.onPrimary.withOpacity(1),
          fontSize: 14.fSize,
          fontFamily: 'Segoe UI',
          fontWeight: FontWeight.w700,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFFCB202D),
    primaryContainer: Color(0XFFFFE3E3),

    // Error colors
    errorContainer: Color(0XFFFF1D1D),
    onError: Color(0XFFC00808),

    // On colors(text colors)
    onPrimary: Color(0X99FFFFFF),
    onPrimaryContainer: Color(0XFF4D1F43),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Amber
  Color get amber400 => Color(0XFFECD824);

  // Black
  Color get black900 => Color(0XFF000000);

  // Blue
  Color get blue50033 => Color(0X33279AEC);
  Color get blue900 => Color(0XFF0B4D9C);

  // BlueGray
  Color get blueGray100 => Color(0XFFD9D9D9);
  Color get blueGray10001 => Color(0XFFCECECE);

  // DeepOrange
  Color get deepOrange20082 => Color(0X82FFA8A8);
  Color get deepOrangeA700 => Color(0XFFE41515);
  Color get deepOrangeA70001 => Color(0XFFE41414);

  // Gray
  Color get gray100 => Color(0XFFF7F4F4);
  Color get gray200 => Color(0XFFF0EBEB);
  Color get gray300 => Color(0XFFE5E5E5);
  Color get gray400 => Color(0XFFC4C4C4);
  Color get gray500 => Color(0XFFA3A0A0);
  Color get gray50001 => Color(0XFFA4A0A0);
  Color get gray600 => Color(0XFF807070);
  Color get gray60001 => Color(0XFF8C7B7B);
  Color get gray700 => Color(0XFF5E5E5E);
  Color get gray800 => Color(0XFF3B3636);

  // Green
  Color get green600 => Color(0XFF4AB325);
  Color get green800 => Color(0XFF196B43);
  Color get green900 => Color(0XFF0C6C15);

  // Indigo
  Color get indigoA700 => Color(0XFF1A30F3);

  // LightBlue
  Color get lightBlue50033 => Color(0X33039EF6);

  // LightGreen
  Color get lightGreen500 => Color(0XFF72CA52);
  Color get lightGreen900 => Color(0XFF2B7D0E);

  // Orangeb
  Color get orange7009b => Color(0X9BFF7A00);

  // Pink
  Color get pink500 => Color(0XFFEB0B92);

  // Red
  Color get red200 => Color(0XFFD3AC88);
  Color get red50 => Color(0XFFFFEBEB);
  Color get red500 => Color(0XFFFF4040);
  Color get redA700 => Color(0XFFF60F0F);

  // RedAD
  Color get redA700D8 => Color(0XD8FF0000);

  // Yellow
  Color get yellow800 => Color(0XFFF49B32);
  Color get yellowA10059 => Color(0X59FFF38F);
  Color get yellowA700 => Color(0XFFFFD600);
  Color get yellowA70001 => Color(0XFFFFD700);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
