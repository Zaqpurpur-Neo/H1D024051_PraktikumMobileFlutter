import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class CustomColor {
  static const primary = Color(0xff3e0f8d);
  static const primaryLight = Color(0xff9564dd);
  static const primaryHover = Color(0xff5214bd);
  static const onPrimary = Colors.white;

  static const secondary = Color(0xffe4da72);
  static const secondaryHover = Color(0xffd6c954);
  static const onSecondary = Color(0xff262402);

  static const background = Color(0xffeeeeee);

  static const surface = Color(0xffffffff);
  static const surfaceElevated = Color(0xfff8f7fb);
  static const surfaceHighlight = Color(0xffe5e0f0);
  static const surfaceHover = Color(0xffede9f5);
  static const onSurface = Color(0xff1b1726);

  static const border = Color(0xffd8d2e4);
  static const borderSubtle = Color(0xffeae6f2);

  static const textPrimary = Color(0xff1b1726);
  static const textSecondary = Color(0xff5e586d);
  static const textMuted = Color(0xff8f88a0);
  static const error = Color(0xffdc2626);
  static const onError = Colors.white;
  static const backgroundColor = background;
  static const foregroundColor = onSurface;
}

ThemeData customLightTheme(BuildContext context) => ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  scaffoldBackgroundColor: CustomColor.background,
  textTheme: ThemeData.light().textTheme.apply(
    fontFamily: GoogleFonts.outfit().fontFamily,
  ),
  colorScheme: const ColorScheme.light(
    primary: CustomColor.primary,
    onPrimary: CustomColor.onPrimary,
    primaryContainer: CustomColor.primaryLight,
    onPrimaryContainer: Colors.white,
    secondary: CustomColor.secondary,
    onSecondary: CustomColor.onSecondary,
    surface: CustomColor.surface,
    onSurface: CustomColor.onSurface,
    error: CustomColor.error,
    onError: CustomColor.onError,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: CustomColor.surface,
    foregroundColor: CustomColor.foregroundColor,
    elevation: 0,
    scrolledUnderElevation: 1,
  ),
  cardTheme: const CardThemeData(
    color: CustomColor.surface,
    elevation: 0,
    shape: RoundedRectangleBorder(
      side: BorderSide(color: CustomColor.borderSubtle),
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
  ),
);
