import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/extensions/numbers_extension.dart';
import 'cuco_colors_dark.dart';
import 'cuco_colors_light.dart';
import 'cuco_fonts.dart';
import 'cuco_icons.dart';

abstract class CucoThemes {
  static ThemeData get dark {
    return customTheme(
      brightness: Brightness.light,
      primary: CucoColorsDark().primary,
      primaryVariant: CucoColorsDark().primary,
      onPrimary: CucoColorsDark().background,
      secondary: CucoColorsDark().secundary,
      secondaryVariant: CucoColorsDark().secundary,
      onSecondary: CucoColorsDark().background,
      background: CucoColorsDark().background,
      scaffoldBackground: CucoColorsDark().background,
      onBackground: CucoColorsDark().text,
      surface: CucoColorsDark().emphasisBackground,
      onSurface: CucoColorsDark().text,
      error: CucoColorsDark().text,
      onError: CucoColorsDark().background,
      disabledColor: CucoColorsDark().text,
      dividerColor: CucoColorsDark().primary,
      dialogBackgroundColor: CucoColorsDark().background,
      bottomNavigationBarBackgroundColor: CucoColorsDark().emphasisBackground,
      inputFillColor: CucoColorsDark().emphasisBackground,
      appBarBackgroundColor: CucoColorsDark().primary,
      fontColor: CucoColorsDark().text,
      primarySwatch: CucoColorsDark().black,
    );
  }

  static ThemeData get light {
    return customTheme(
      brightness: Brightness.light,
      primary: CucoColorsLight().primary,
      primaryVariant: CucoColorsLight().primary,
      onPrimary: CucoColorsLight().background,
      secondary: CucoColorsLight().secundary,
      secondaryVariant: CucoColorsLight().secundary,
      onSecondary: CucoColorsLight().background,
      background: CucoColorsLight().background,
      scaffoldBackground: CucoColorsLight().background,
      onBackground: CucoColorsLight().text,
      surface: CucoColorsLight().emphasisBackground,
      onSurface: CucoColorsLight().text,
      error: CucoColorsLight().text,
      onError: CucoColorsLight().background,
      disabledColor: CucoColorsLight().text,
      dividerColor: CucoColorsLight().primary,
      dialogBackgroundColor: CucoColorsLight().background,
      bottomNavigationBarBackgroundColor: CucoColorsLight().emphasisBackground,
      inputFillColor: CucoColorsLight().emphasisBackground,
      appBarBackgroundColor: CucoColorsLight().primary,
      fontColor: CucoColorsLight().text,
      primarySwatch: CucoColorsLight().black,
    );
  }

  static ThemeData customTheme({
    required Brightness brightness,
    // Primary
    required Color primary,
    required Color primaryVariant,
    required Color onPrimary,
    // Secondary
    required Color secondary,
    required Color secondaryVariant,
    required Color onSecondary,
    // Background
    required Color background,
    required Color scaffoldBackground,
    required Color onBackground,
    // Surface
    required Color surface,
    required Color onSurface,
    // Error
    required Color error,
    required Color onError,
    // Misc
    required Color disabledColor,
    required Color dividerColor,
    required Color dialogBackgroundColor,
    required Color bottomNavigationBarBackgroundColor,
    required Color appBarBackgroundColor,
    required Color inputFillColor,
    required Color fontColor,
    required MaterialColor primarySwatch,
  }) {
    return ThemeData(
      brightness: brightness,
      primarySwatch: primarySwatch,
      primaryColor: primary,
      primaryColorLight: brightness == Brightness.light
          ? primarySwatch.shade300
          : primarySwatch.shade900,
      primaryColorDark: primaryVariant,
      backgroundColor: background,
      scaffoldBackgroundColor: scaffoldBackground,
      cardColor: surface,
      disabledColor: disabledColor,
      dividerColor: dividerColor,
      dialogBackgroundColor: dialogBackgroundColor,
      colorScheme: ColorScheme(
        brightness: brightness,
        primary: primary,
        secondary: secondary,
        background: background,
        surface: surface,
        error: error,
        onBackground: onBackground,
        onPrimary: onPrimary,
        onSecondary: onSecondary,
        onError: onError,
        onSurface: onSurface,
      ),
      fontFamily: CucoFonts.robotoSlab,
      primaryTextTheme: const TextTheme(),
      textTheme: TextTheme(
        headline1: TextStyle(
            fontSize: 98.scale,
            fontWeight: FontWeight.w300,
            letterSpacing: -1.5,
            color: fontColor),
        headline2: TextStyle(
            fontSize: 61.scale,
            fontWeight: FontWeight.w600,
            letterSpacing: -0.5,
            color: fontColor),
        headline3: TextStyle(
            fontSize: 49.2.scale,
            fontWeight: FontWeight.w400,
            color: fontColor),
        headline4: TextStyle(
            fontSize: 35.scale, fontWeight: FontWeight.w400, color: fontColor),
        headline5: TextStyle(
            fontSize: 24.scale, fontWeight: FontWeight.w500, color: fontColor),
        headline6: TextStyle(
            fontSize: 20.scale,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.15,
            color: fontColor),
        subtitle1: TextStyle(
            fontSize: 16.scale,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.15,
            color: fontColor),
        subtitle2: TextStyle(
            fontSize: 14.scale,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.1,
            color: fontColor),
        bodyText1: TextStyle(
            fontSize: 16.scale,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.5,
            color: fontColor),
        bodyText2: TextStyle(
            fontSize: 14.scale,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.25,
            color: fontColor),
        button: TextStyle(
            fontSize: 16.scale,
            fontWeight: FontWeight.w700,
            letterSpacing: 0.25,
            color: fontColor),
        caption: TextStyle(
            fontSize: 12.scale,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.4,
            color: fontColor),
        overline: TextStyle(
            fontSize: 10.scale,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.5,
            color: fontColor),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: surface,
        hintStyle: TextStyle(
            fontSize: 14.scale,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.25,
            color: onSurface.withOpacity(0.5)),
        contentPadding: EdgeInsets.only(
          left: 10,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: primary,
        backgroundColor: bottomNavigationBarBackgroundColor,
        unselectedItemColor: disabledColor,
        selectedLabelStyle: TextStyle(
          fontFamily: CucoFonts.robotoSlab,
          fontSize: 12.scale,
          fontWeight: FontWeight.w500,
          color: primary,
        ),
        unselectedLabelStyle: TextStyle(
          fontFamily: CucoFonts.robotoSlab,
          fontSize: 12.scale,
          fontWeight: FontWeight.w500,
          color: disabledColor,
        ),
      ),
      buttonTheme: ButtonThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0.scale),
        ),
        disabledColor: disabledColor,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: appBarBackgroundColor,
        foregroundColor: primary,
        elevation: 0.0,
        titleTextStyle: TextStyle(
          fontSize: 20.scale,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.15,
          color: primary,
          fontFamily: CucoFonts.robotoSlab,
        ),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: appBarBackgroundColor,
          statusBarIconBrightness: brightness == Brightness.light
              ? Brightness.dark
              : Brightness.light,
          statusBarBrightness: brightness,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        checkColor: MaterialStateProperty.all<Color>(onPrimary),
        fillColor: MaterialStateProperty.all<Color>(primary),
      ),
      iconTheme: IconThemeData(
        color: primary,
        size: 24.scale,
      ),
      primaryIconTheme: IconThemeData(
        color: primary,
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.all<Color>(secondary),
      ),
      cardTheme: CardTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0.scale),
        ),
        elevation: brightness == Brightness.light ? 4.0 : 0.0,
        shadowColor: primary.withOpacity(.2),
        color: surface,
        margin: EdgeInsets.zero,
      ),
    );
  }
}
