import 'package:flutter/material.dart';
import 'components/app_utils.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key) {
    print("Home: constructor");
  }

  @override
  Widget build(context) {
    EdgeInsets textPadding = EdgeInsets.fromLTRB(30, 10, 30, 10);

    return ListView(
      primary: false,
      padding: const EdgeInsets.all(0),
      children: [
        Center(
          child: Text(
            'All About Jerry',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        horizontalDivider(),
        Container(
          padding: textPadding,
          alignment: Alignment.topLeft,
          child: Text(
              'After a long career as a software developer and infrastructure engineer, '
              "I've begun refreshing my skills. I've taken a liking to working with React,"
              "TypeScript, Flutter, Dart, and Python."),
        ),
        Container(
          padding: textPadding,
          alignment: Alignment.topLeft,
          child: Text(
              "This site is basically a business card / resume / portfolio.  It's just my playground "
              "for pet projects and a place to show off my skills."),
        ),
        horizontalDivider(),
        Container(
          padding: textPadding,
          alignment: Alignment.topLeft,
          child: Text(
            'Scan the QR code to open this site on your mobile device.',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/frame.png"),
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}
