import 'package:flutter/material.dart';
import '../components/content_card.dart';
import '../components/my_scaffold.dart';
import '../components/page_heading.dart';
import '../util.dart';

class Articles extends StatefulWidget {
  const Articles({super.key});

  @override
  State<Articles> createState() => _ArticlesState();
}

class _ArticlesState extends State<Articles> {
  final pageTitle = 'title';
  final subTitle = 'subTitle';
  List<String> content = [];
  final mdContent = [
    "sample.md",
    "sample_1.md",
    "sample_2.md",
  ];

  _ArticlesState() {
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
        Container(
          alignment: Alignment.topLeft,
          child: markDown(content[0]),
        ),
        Wrap(
          spacing: 50,
          children: [
            ContentCard(
              width: 300,
              child: markDown(content[1]),
            ),
            ContentCard(
              width: 300,
              child: markDown(content[2]),
            ),
          ],
        ),
      ],
    );
  }
}
