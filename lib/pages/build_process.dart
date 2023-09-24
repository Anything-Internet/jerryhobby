import 'package:flutter/material.dart';
import '../components/content_card.dart';
import '../components/my_scaffold.dart';
import '../components/page_heading.dart';
import '../util.dart';

class BuildProcess extends StatefulWidget {
  const BuildProcess({super.key});

  @override
  State<BuildProcess> createState() => _BuildProcessState();
}

class _BuildProcessState extends State<BuildProcess> {
  final pageTitle = 'Build Process';
  final subTitle = 'How I built this app. Tools and processes.';
  List<String> content = [];
  final mdContent = [
    "build_process.md",
    "build_process_1.md",
    "build_process_2.md",
    "build_process_3.md",
    "build_process_4.md",
  ];

  _BuildProcessState() {
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
          //padding: textPadding,
          alignment: Alignment.topLeft,
          child: markDown(content[0]),
        ),
        Wrap(
          spacing: 50,
          children: [
            ContentCard(
              maxWidth: 800,
              child: markDown(content[4]),
            ),
            ContentCard(
              child: markDown(content[1]),
            ),
            ContentCard(
              child: markDown(content[2]),
            ),
            ContentCard(
              child: markDown(content[3]),
            ),
          ],
        ),
      ],
    );
  }
}
