import 'package:flutter/material.dart';
import '../components/content_card.dart';
import '../components/my_scaffold.dart';
import '../components/page_heading.dart';
import '../util.dart';

class Technical extends StatefulWidget {
  const Technical({super.key});

  @override
  State<Technical> createState() => _TechnicalState();
}

class _TechnicalState extends State<Technical> {
  final pageIcon = Icon(Icons.manage_accounts_outlined);
  final pageTitle = 'Technical Skills';
  final subTitle = 'A true geek with a strong business sense.';
  List<String> content = [];
  final mdContent = [
    "technical.md",
    "technical_1.md",
    "technical_2.md",
    "technical_3.md",
  ];

  _TechnicalState() {
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
        Wrap(
          spacing: 50,
          children: [
            Container(
              //padding: textPadding,
              alignment: Alignment.topLeft,
              child: markDown(content[0]),
            ),
            ContentCard(
              width: 300,
              child: markDown(content[1]),
            ),
            ContentCard(
              width: 200,
              child: markDown(content[2]),
            ),
            ContentCard(
              width: 500,
              child: markDown(content[3]),
            ),
          ],
        ),
      ],
    );
  }
}
