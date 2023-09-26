import 'package:flutter/material.dart';
import '../components/content_card.dart';
import '../components/my_scaffold.dart';
import '../components/page_heading.dart';
import '../util.dart';

class Experience extends StatefulWidget {
  const Experience({super.key});

  @override
  State<Experience> createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  final pageIcon = Icon(Icons.dashboard_customize_outlined);
  final pageTitle = 'Experience';
  final subTitle = 'My Work Experience.';
  List<String> content = [];
  final mdContent = [
    "experience_1.md",
    "experience_2.md",
    "experience_3.md",
  ];
  _ExperienceState() {
    mdContent.forEach((element) {
      content.add("loading...");
      loadAssetMarkdownContent(element).then((value) {
        setState(() {
          content[mdContent.indexOf(element)] = value;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return myScaffold(context: context, body: body);
  }

  body() {
    return ListView(
      primary: false,
      children: [
        PageHeading(
          icon: pageIcon,
          title: pageTitle,
          subTitle: subTitle,
        ),
        //const Divider(),
        Wrap(
          spacing: 50,
          children: [
            ContentCard(
              child: markDown(content[0]),
            ),
            ContentCard(
              child: markDown(content[1]),
            ),
            ContentCard(
              child: markDown(content[2]),
            ),
          ],
        ),
      ],
    );
  }
}
