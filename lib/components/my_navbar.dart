import 'package:flutter/material.dart';
import '/pages/articles.dart';
import '/pages/contact.dart';
import '/pages/experience.dart';
import '/pages/leadership.dart';
import '/pages/projects.dart';
import '/pages/resume.dart';
import '/pages/technical.dart';
import '/pages/build_process.dart';
import '/pages/home.dart';

routes (BuildContext  context) {
  return  <String, WidgetBuilder>{
    '/': (context) => const Home(),
    '/articles': (context) => const Articles(),
    '/leadership': (context) => const Leadership(),
    '/technical': (context) => const Technical(),
    '/experience': (context) => const Experience(),
    '/projects': (context) => const Projects(),
    '/resume': (context) => const Resume(),
    '/contact': (context) => const Contact(),
    '/buildProcess': (context) => const BuildProcess(),
  };
}


class MyNavBar extends StatelessWidget {
  MyNavBar({super.key});

  final Map mainMenu = {
    'Home': '/',
    'Articles': '/articles',
    'Leadership': '/leadership',
    'Technical': '/technical',
    'Experience': '/experience',
    'Projects': '/projects',
    'Resume': '/resume',
    'Contact': '/contact',
  };
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 0, bottom: 0),
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.topLeft,
      decoration:  BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 2,
            color: Theme.of(context).colorScheme.onPrimaryContainer,
          ),
        ),
      ),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: navBarItems(context),
      ),
    );
  }

  navBarItems(BuildContext context) {
    List<Widget> navBarItems = [];
    mainMenu.forEach((key, value) {
      navBarItems.add(navButton(context, key, value));
    });
    return navBarItems;
  }

  navButton(BuildContext context, String text, String route) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
      child: Text(
        text,
        style: Theme.of(context).textTheme.titleSmall,
      ),
    );
  }
}
