import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
    theme: ThemeData(
      // Define the default brightness and colors.
      //brightness: Brightness.dark,

      // Define the default font family.
      fontFamily: 'Hind',
      primaryColor: Colors.blueGrey[900],

      // Define the default `TextTheme`. Use this to specify the default
      // text styling for headlines, titles, bodies of text, and more.

      textTheme: const TextTheme(
        headlineSmall: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        displayLarge: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
        titleLarge: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal),
        bodyMedium: TextStyle(fontSize: 18, fontFamily: 'Hind'),
        bodySmall: TextStyle(fontSize: 14, fontFamily: 'Hind'),
      ),
    ),
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
  Widget home = Home();
  Widget summary = Summary();
  Widget contact = Contact();
  Widget objectives = Objectives();
  Widget experience = Experience();
  Widget education = Education();
  Widget projects = Projects();
  Widget download = Download();
  Widget skills = Skills();

  late double screenWidth;
  late double screenHeight;

  late Widget currentPage;

  MyAppState() {
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
      //drawer: drawer(),
      backgroundColor: Colors.white,
      appBar: appBar(),
      body: Row(
        children: [
          Container(width: 130, child: Container(child: drawer(screenNarrow))),
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
          width: 130,
          child: drawer(screenNarrow)),
      backgroundColor: Colors.white,
      appBar: appBar(),
      body: Container(
        child: currentPage,
      ),
    );

    return screenNarrow ? narrowScaffold : wideScaffold;
  }

  drawer(screenNarrow) {
    Color? tileColor = Colors.indigo[50];
    Color? hoverColor = Colors.indigo[100];

    return ListView(
      children: [
        DrawerHeader(
          padding: EdgeInsets.fromLTRB(0, 30.0, 0, 0),
          margin: EdgeInsets.zero,
          child: Image(image: AssetImage('assets/images/jerrytoon.png')),
          decoration: BoxDecoration(
            color: Colors.indigo[200],
          ),
        ),
        ListTile(
          title: Text('Home'),
          tileColor: tileColor,
          hoverColor: hoverColor,
          onTap: () {
            setState(() {
              currentPage = home;
            });
            if (screenNarrow) Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Contact'),
          tileColor: tileColor,
          hoverColor: hoverColor,
          onTap: () {
            setState(() {
              currentPage = contact;
            });
            if (screenNarrow) Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Objectives'),
          tileColor: tileColor,
          hoverColor: hoverColor,
          onTap: () {
            setState(() {
              currentPage = objectives;
            });
            if (screenNarrow) Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Summary'),
          tileColor: tileColor,
          hoverColor: hoverColor,
          onTap: () {
            setState(() {
              currentPage = summary;
            });
            if (screenNarrow) Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Skills'),
          tileColor: tileColor,
          hoverColor: hoverColor,
          onTap: () {
            setState(() {
              currentPage = skills;
            });
            if (screenNarrow) Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Experience'),
          tileColor: tileColor,
          hoverColor: hoverColor,
          onTap: () {
            setState(() {
              currentPage = experience;
            });
            if (screenNarrow) Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Education'),
          tileColor: tileColor,
          hoverColor: hoverColor,
          onTap: () {
            setState(() {
              currentPage = education;
            });
            if (screenNarrow) Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Projects'),
          tileColor: tileColor,
          hoverColor: hoverColor,
          onTap: () {
            setState(() {
              currentPage = projects;
            });
            if (screenNarrow) Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Download'),
          tileColor: tileColor,
          hoverColor: hoverColor,
          onTap: () {
            setState(() {
              currentPage = download;
            });
            if (screenNarrow) Navigator.pop(context);
          },
        ),
      ],
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
          Image(
              image: AssetImage('assets/images/jerrytoonright.png'),
              height: 50,
              width: 50),
        ],
      ),
    );
    // return
  }
}
