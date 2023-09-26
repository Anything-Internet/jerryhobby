import 'package:flutter/material.dart';
import 'util.dart';

// TODO textTheme
// TODO buttonTheme
// TODO elevatedButtonTheme
// TODO outlinedButtonTheme
// TODO textButtonTheme
// TODO toggleButtonsTheme
// TODO checkboxTheme
// TODO radioTheme
// TODO switchTheme
// TODO sliderTheme
// TODO tabBarTheme
// TODO tooltipTheme
// TODO cardTheme
// TODO chipTheme
// TODO dialogTheme
// TODO floatingActionButtonTheme
// TODO navigationRailTheme
// TODO appBarTheme
// TODO bottomAppBarTheme
// TODO bottomSheetTheme
// TODO popupMenuTheme
// TODO materialTapTargetSize
// TODO materialButtonTheme
// TODO pageTransitionsTheme
// TODO appBarTheme
// TODO bottomAppBarTheme
// TODO bottomSheetTheme
// TODO popupMenuTheme
// TODO materialTapTargetSize
// TODO materialButtonTheme
// TODO pageTransitionsTheme
// TODO colorScheme
// TODO snackBarTheme
// TODO bottomNavigationBarTheme
// TODO timePickerTheme
// TODO textSelectionTheme
// TODO dataTableTheme
// TODO fixTextFieldOutlineLabel
// TODO fixTextFieldOutlineBorder
// TODO fixTextFieldFilledBorder
// TODO fixTextFieldEnabledBorder
// TODO fixTextFieldFocusedBorder
// TODO fixTextFieldDisabledBorder
// TODO fixTextFieldErrorBorder

DividerThemeData dividerTheme = const DividerThemeData(
  space: 50,
  thickness: 1,
  indent: 0,
  endIndent: 0,
);

TextTheme textTheme = const TextTheme(
  headlineLarge: TextStyle(
    fontFamily: kDefaultFontFamily,
    fontSize: 30,
    fontWeight: FontWeight.bold,
  ),
  headlineMedium: TextStyle(
    fontFamily: kDefaultFontFamily,
    fontSize: 25,
    fontWeight: FontWeight.bold,
  ),
  headlineSmall: TextStyle(
    fontFamily: kDefaultFontFamily,
    fontSize: 30,
    fontWeight: FontWeight.bold,
  ),
  displayLarge: TextStyle(
    fontFamily: kDefaultFontFamily,
    fontSize: 30,
    fontWeight: FontWeight.bold,
  ),
  displayMedium: TextStyle(
    fontFamily: kDefaultFontFamily,
    fontSize: 25,
    fontWeight: FontWeight.bold,
  ),
  displaySmall: TextStyle(
    fontFamily: kDefaultFontFamily,
    fontSize: 20,
    fontWeight: FontWeight.normal,
  ),
  titleLarge: TextStyle(
    fontFamily: kDefaultFontFamily,
    fontSize: 30,
    fontWeight: FontWeight.bold,
  ),
  titleMedium: TextStyle(
    fontFamily: kDefaultFontFamily,
    fontSize: 25,
    fontWeight: FontWeight.bold,
  ),
  titleSmall: TextStyle(
    fontFamily: kDefaultFontFamily,
    fontSize: 14,
    fontWeight: FontWeight.bold,
  ),
  bodyLarge: TextStyle(
    fontFamily: kDefaultFontFamily,
    fontSize: 20,
    fontWeight: FontWeight.normal,
  ),
  bodyMedium: TextStyle(
    fontFamily: kDefaultFontFamily,
    fontSize: 16,
    fontWeight: FontWeight.normal,
  ),
  bodySmall: TextStyle(
    fontFamily: kDefaultFontFamily,
    fontSize: 14,
    fontWeight: FontWeight.normal,
  ),
);

ThemeData appLightTheme = ThemeData.light().copyWith(
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: Colors.white,
    onPrimary: Colors.black,
    primaryContainer: Colors.grey,
    onPrimaryContainer: Colors.black,
    secondary: Color.fromRGBO(245, 245, 245, 1),
    onSecondary: Colors.black,
    secondaryContainer: Colors.green,
    onSecondaryContainer: Colors.lightBlueAccent,
    surface: Colors.black,
    onSurface: Colors.black,
    error: Colors.red,
    onError: Colors.purpleAccent,
    background: Colors.white,
    onBackground: Colors.white,
  ),
  dividerTheme: dividerTheme.copyWith(
    color: Colors.black,
  ),
  textTheme: textTheme.copyWith(
    headlineLarge: textTheme.headlineLarge?.copyWith(
      color: Colors.black,
    ),
    headlineMedium: textTheme.headlineMedium?.copyWith(
      color: Colors.black,
    ),
    headlineSmall: textTheme.headlineSmall?.copyWith(
      color: Colors.black,
    ),
    displayLarge: textTheme.displayLarge?.copyWith(
      color: Colors.black,
    ),
    displayMedium: textTheme.displayMedium?.copyWith(
      color: Colors.black,
    ),
    displaySmall: textTheme.displaySmall?.copyWith(
      color: Colors.black,
    ),
    titleLarge: textTheme.titleLarge?.copyWith(
      color: Colors.black,
    ),
    titleMedium: textTheme.titleMedium?.copyWith(
      color: Colors.black,
    ),
    titleSmall: textTheme.titleSmall?.copyWith(
      color: Colors.black,
    ),
    bodyLarge: textTheme.bodyLarge?.copyWith(
      color: Colors.black,
    ),
    bodyMedium: textTheme.bodyMedium?.copyWith(
      color: Colors.black,
    ),
    bodySmall: textTheme.bodySmall?.copyWith(
      color: Colors.black,
    ),
  ),
);

ThemeData appDarkTheme = ThemeData.dark().copyWith(
  colorScheme:  ColorScheme(
    brightness: Brightness.dark,
    primary: Colors.black,
    onPrimary: Colors.white,
    primaryContainer: Colors.white10,
    onPrimaryContainer: Colors.white,
    secondary: Color.fromRGBO(28, 28, 28, 1),
    onSecondary: Colors.white,
    secondaryContainer: Colors.green,
    onSecondaryContainer: Colors.lightBlueAccent,
    surface: Colors.black,
    onSurface: Colors.white,
    surfaceVariant: Colors.indigoAccent,
    onSurfaceVariant: Colors.white,
    surfaceTint: Colors.black,
    error: Colors.red,
    onError: Colors.purpleAccent,
    background: Colors.black,
    onBackground: Colors.black,
  ),
  dividerTheme: dividerTheme.copyWith(
    color: Colors.white,
  ),
  textTheme: textTheme.copyWith(
    headlineLarge: textTheme.headlineLarge?.copyWith(
      color: Colors.white,
    ),
    headlineMedium: textTheme.headlineMedium?.copyWith(
      color: Colors.white,
    ),
    headlineSmall: textTheme.headlineSmall?.copyWith(
      color: Colors.white,
    ),
    displayLarge: textTheme.displayLarge?.copyWith(
      color: Colors.white,
    ),
    displayMedium: textTheme.displayMedium?.copyWith(
      color: Colors.white,
    ),
    displaySmall: textTheme.displaySmall?.copyWith(
      color: Colors.white,
    ),
    titleLarge: textTheme.titleLarge?.copyWith(
      color: Colors.white,
    ),
    titleMedium: textTheme.titleMedium?.copyWith(
      color: Colors.white,
    ),
    titleSmall: textTheme.titleSmall?.copyWith(
      color: Colors.white,
    ),
    bodyLarge: textTheme.bodyLarge?.copyWith(
      color: Colors.white,
    ),
    bodyMedium: textTheme.bodyMedium?.copyWith(
      color: Colors.white,
    ),
    bodySmall: textTheme.bodySmall?.copyWith(
      color: Colors.white,
    ),
  ),
);

/*
required Color primary,
required Color onPrimary,
Color? primaryContainer,
Color? onPrimaryContainer,
required Color secondary,
required Color onSecondary,
Color? secondaryContainer,
Color? onSecondaryContainer,
Color? tertiary,
Color? onTertiary,
Color? tertiaryContainer,
Color? onTertiaryContainer,
required Color error,
required Color onError,
Color? errorContainer,
Color? onErrorContainer,
required Color background,
required Color onBackground,
required Color surface,
required Color onSurface,
Color? surfaceVariant,
Color? onSurfaceVariant,
Color? outline,
Color? outlineVariant,
Color? shadow,
Color? scrim,
Color? inverseSurface,
Color? onInverseSurface,
Color? inversePrimary,
Color? surfaceTint
*/
