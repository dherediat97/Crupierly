import 'package:crupierly/constants/app_constants.dart';
import 'package:flutter/material.dart';

var defaultThemeData = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: primaryColor,
    foregroundColor: primaryTextColor,
  ),
  iconButtonTheme: const IconButtonThemeData(
    style: ButtonStyle(
      iconColor: WidgetStatePropertyAll(primaryTextColor),
    ),
  ),
  useMaterial3: true,
);

var defaultLightTheme = defaultThemeData.copyWith(
  colorScheme: const ColorScheme.light(
    primary: primaryColor,
    onPrimary: primaryTextColor,
    secondary: secondaryColor,
    onSecondary: secondaryTextColor,
  ),
);

var defaultDarkTheme = defaultThemeData.copyWith(
  colorScheme: const ColorScheme.dark(
    primary: primaryColor,
    onPrimary: primaryTextColor,
    secondary: secondaryColor,
    onSecondary: secondaryTextColor,
  ),
);
