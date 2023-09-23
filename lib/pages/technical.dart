import 'package:flutter/material.dart';
import '../components/content_card.dart';
import '../components/my_scaffold.dart';
import '../util.dart';

class Technical extends StatefulWidget {
  const Technical({super.key});

  @override
  State<Technical> createState() => _TechnicalState();
}

class _TechnicalState extends State<Technical> {
  final pageTitle = 'Technical Skills';
  final content = [
    "loading...",
    "loading...",
    "loading...",];
  final mdContent = [
    "technical_1.md",
    "technical_2.md",
    "technical_3.md",
  ];

  _TechnicalState() {
    mdContent.forEach((element) {
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
        Center(
          child: SelectableText(
            pageTitle,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
        const Divider(),
        Wrap(
          spacing: 50,
          children: [
            ContentCard(
              width: 300,
              child: markDown(content[0]),
            ),
            ContentCard(
             width: 200,
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
