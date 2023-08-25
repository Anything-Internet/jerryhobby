import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jerry_hobby/pages/components/theme.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'pages/home.dart';
import 'pages/projects.dart';
import 'pages/summary.dart';
import 'pages/contact.dart';
import 'pages/download.dart';
import 'pages/education.dart';
import 'pages/experience.dart';
import 'pages/objectives.dart';
import 'pages/skills.dart';

void main() {
  runApp(MaterialApp(
    theme: appTheme(),
    debugShowCheckedModeBanner: false,
    title: 'Jerry Hobby',
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  late Widget home;
  late Widget summary;
  late Widget contact;
  late Widget objectives;
  late Widget experience;
  late Widget education;
  late Widget projects;
  late Widget download;
  late Widget skills;

  late double screenWidth;
  late double screenHeight;

  late Widget currentPage;

  MyAppState() {
    home = Home();
    summary = Summary();
    contact = Contact();
    objectives = Objectives();
    experience = Experience();
    education = Education();
    projects = Projects();
    download = Download();
    skills = Skills();

    currentPage = home;
  }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    bool screenNarrow = screenWidth < 600;

    Scaffold wideScaffold = Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(),
      bottomNavigationBar: bottomNavigationBar(),
      body: Row(
        children: [
          Container(width: 150, child: Container(child: drawer(screenNarrow))),
          Expanded(
            child: currentPage,
          ),
        ],
      ),
    );

    Scaffold narrowScaffold = Scaffold(
      drawer: Drawer(
          surfaceTintColor: Colors.white,
          backgroundColor: Colors.indigo[50],
          width: 150,
          child: drawer(screenNarrow)),
      backgroundColor: Colors.white,
      appBar: appBar(),
      bottomNavigationBar: bottomNavigationBar(),
      body: Container(
        child: currentPage,
      ),
    );

    return screenNarrow ? narrowScaffold : wideScaffold;
  }

  drawer(screenNarrow) {
    return ListView(
      children: [
        DrawerHeader(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          margin: EdgeInsets.zero,
          child: Image(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/jerrytoon.png')),
          decoration: BoxDecoration(
            color: Colors.indigo[200],
          ),
        ),
        menuItem(screenNarrow, "Home", home),
        menuItem(screenNarrow, "Contact", contact),
        menuItem(screenNarrow, "Objectives", objectives),
        menuItem(screenNarrow, "Summary", summary),
        menuItem(screenNarrow, "Skills", skills),
        menuItem(screenNarrow, "Experience", experience),
        menuItem(screenNarrow, "Education", education),
        menuItem(screenNarrow, "Projects", projects),
        menuItem(screenNarrow, "Download", download),
      ],
    );
  }

  menuItem(bool screenNarrow, String title, Widget page) {
    Color? tileColor = Colors.indigo[50];
    Color? hoverColor = Colors.indigo[100];

    return ListTile(
      title: Text(title),
      tileColor: tileColor,
      hoverColor: hoverColor,
      onTap: () {
        setState(() {
          currentPage = page;
        });
        if (screenNarrow) Navigator.pop(context);
      },
    );
  }

  appBar() {
    return AppBar(
      toolbarHeight: 70,
      backgroundColor: Colors.indigo[900],
      foregroundColor: Colors.white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SelectableText(
            'Jerry Hobby',
            style: GoogleFonts.roboto(
              color: Colors.white,
              textStyle: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          Icon(
            Symbols.flutter,
            color: Colors.cyan[100],
            size: 32.0,
            semanticLabel: 'Flutter Icon',
          ),
        ],
      ),
    );
    // return
  }

  bottomNavigationBar() {
    return Container(
      height: 30,
      color: Colors.indigo[900],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Text(
              '© 2023 and beyond, Jerry Hobby',
              style: GoogleFonts.roboto(
                color: Colors.white,
                textStyle: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: Text(
              'Built with Flutter/Dart',
              style: GoogleFonts.roboto(
                color: Colors.white,
                textStyle: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
