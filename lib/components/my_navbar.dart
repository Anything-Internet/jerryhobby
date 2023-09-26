import 'package:flutter/material.dart';
import 'package:jerry_hobby/util.dart';
import '/pages/articles.dart';
import '/pages/contact.dart';
import '/pages/experience.dart';
import '/pages/leadership.dart';
import '/pages/projects.dart';
import '/pages/resume.dart';
import '/pages/technical.dart';
import '/pages/build_process.dart';
import '/pages/home.dart';

routes(BuildContext context) {
  return <String, WidgetBuilder>{
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

final Map mainMenu = {
  '/': 'Home',
  '/articles': 'Articles',
  '/leadership': 'Leadership',
  '/technical': 'Technical',
  '/experience': 'Experience',
  '/projects': 'Projects',
  '/buildProcess': 'Build Process',
  '/resume': 'Resume',
  '/contact': 'Contact',
};


final Map mainMenuIcons = {
  '/': kIconHome,
  '/articles': kIconArticle,
  '/leadership': kIconLeadership,
  '/technical': kIconTechnical,
  '/experience': kIconExperience,
  '/projects': kIconProjects,
  '/buildProcess': kIconBuildProcess,
  '/resume': kIconResume,
  '/contact': kIconContact,
};

class MyNavBar extends StatelessWidget {
  MyNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 0, bottom: 0),
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
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
      navBarItems.add(navButton(
          context,
          key,
          value,
          mainMenuIcons[key]));
    });
    return navBarItems;
  }

  navButton(
    BuildContext context,
    String route,
    String text,
      Icon? icon,
  ) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          (icon != null)
              ? Container(
            margin: EdgeInsets.only(right: 2),
            child: Icon(
              icon.icon,
              size: 16,
              color: Theme.of(context).colorScheme.onPrimaryContainer.withOpacity(0.6),
            ),
          )
              : SizedBox(height: 0),
          Text(
            text,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ],
      ),
    );
  }
}
