import 'package:flutter/material.dart';
import '/theme.dart';
import '/components/my_navbar.dart';
import 'util.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //ThemeMode themeMode = ThemeMode.light;
  ThemeMode themeMode = ThemeMode.system;

  @override
  initState() {
    super.initState();
    Util.toggleTheme = toggleTheme;
    Util.getThemeMode = getThemeMode;
  }

  toggleTheme() {
    if (themeMode == ThemeMode.system) {
      MediaQuery.platformBrightnessOf(context)
              .toString()
              .contains('Brightness.dark')
          ? themeMode = ThemeMode.dark
          : themeMode = ThemeMode.light;
    }

    setState(() {
      themeMode =
          themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
    });
  }

  getThemeMode() {
    return themeMode;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appLightTheme,
      darkTheme: appDarkTheme,
      themeMode: themeMode,
      initialRoute: '/',
      routes: routes(context),
    );
  }
}
