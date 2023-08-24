import 'dart:ui';
import 'package:flutter/material.dart';

appTheme() {
  return ThemeData(
// Define the default font family.
    fontFamily: 'Hind',
    primaryColor: Colors.blueGrey[900],
    cardColor: Colors.white,

//canvasColor: Colors.white,
// dialogBackgroundColor: Colors.white,
// disabledColor: Colors.white,
// focusColor: Colors.white,
// highlightColor: Colors.white,
// hintColor: Colors.white,
// hoverColor: Colors.white,
// indicatorColor: Colors.white,
// primaryColorLight: Colors.white,
// scaffoldBackgroundColor: Colors.white,
// secondaryHeaderColor: Colors.white,
// shadowColor: Colors.white,
// splashColor: Colors.white,
    dividerTheme: DividerThemeData(
      color: Colors.black,
      thickness: 1,
      indent: 20,
      endIndent: 20,
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        backgroundColor:
        MaterialStateProperty.all<Color>(Colors.lightBlue.shade50),
        foregroundColor:
        MaterialStateProperty.all<Color>(Colors.blue.shade700),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(color: Colors.blue),
          ),
        ),
      ),
    ),

// Define the default `TextTheme`. Use this to specify the default
// text styling for headlines, titles, bodies of text, and more.

    textTheme: const TextTheme(
      headlineSmall: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      displayLarge:
      TextStyle(fontSize: 22, fontWeight: FontWeight.bold, height: 22),
      titleLarge: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal),
      bodyLarge: TextStyle(
        fontSize: 16,
        fontFamily: 'Hind',
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        fontFamily: 'Hind',
      ),
      bodySmall: TextStyle(
        fontSize: 14,
        fontFamily: 'Hind',
      ),
    ),
  );
}