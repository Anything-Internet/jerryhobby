import 'package:flutter/material.dart';
import '../components/content_card.dart';
import '../components/my_scaffold.dart';
import '../components/page_heading.dart';
import '../util.dart';

class Leadership extends StatefulWidget {
  const Leadership({super.key});

  @override
  State<Leadership> createState() => _LeadershipState();
}

class _LeadershipState extends State<Leadership> {
  final pageTitle = 'Leadership';
  final subTitle = 'Bridging the gap between leadership and technology.';
  List<String> content = [];
  final mdContent = [
    "leadership.md",
    "leadership_1.md",
    "leadership_2.md",
  ];

  _LeadershipState() {
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
              width: 500,
              child: markDown(content[2]),
            ),
          ],
        ),
      ],
    );
  }
}
