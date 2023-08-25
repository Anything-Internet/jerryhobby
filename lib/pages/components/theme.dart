import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

markDownStyleSheet() {
  return MarkdownStyleSheet(
    p: TextStyle(
      fontSize: 16,
      fontFamily: 'Hind',
      height: 1.5,
    ),
    pPadding: EdgeInsets.only(bottom: 20),
    horizontalRuleDecoration: ShapeDecoration(
      color: Colors.black,
      shape: Border.all(
        color: Colors.black,
        width: 0.2,
      ),
    ),
  );
}

appTheme() {
  return ThemeData(
// Define the default font family.
    fontFamily: 'Hind',
    primaryColor: Colors.blueGrey[900],
    cardColor: Colors.white,

    // canvasColor: Colors.white,
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
      indent: 30,
      endIndent: 30,
    ),

    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all<Color>(Colors.lightBlue.shade50),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.blue.shade700),
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
      headlineMedium: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.bold,
        height: 2,
      ),
      titleSmall: TextStyle(fontWeight: FontWeight.bold),
      titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      titleLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      displayLarge:
          TextStyle(fontSize: 22, fontWeight: FontWeight.bold, height: 22),
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
