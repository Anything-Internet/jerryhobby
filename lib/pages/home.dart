import 'package:flutter/material.dart';
import 'package:jerry_hobby/components/page_heading.dart';
import '../components/content_card.dart';
import '../components/my_scaffold.dart';
import '../util.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final pageTitle = 'Introducing Jerry';
  final subTitle =
      'Technology futurist. Author. Programmer. World traveler. Radio personality.';
  final content = [
    "loading...",
    "loading...",
    "loading...",
  ];
  final mdContent = [
    "home.md",
    "home_1.md",
  ];

  _HomeState() {
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
        PageHeading(
          title: pageTitle,
          subTitle: subTitle,
        ),
        Container(
          //padding: textPadding,
          alignment: Alignment.topLeft,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: markDown(content[0]),
              ),
              ContentCard(
                width: 200,
                child: Image(
                  image: AssetImage('assets/images/jerry_hobby_headshot.png'),
                  width: 200,
                  height: 200,
                ),
              ),
            ],
          ),
        ),
        Wrap(
          spacing: 50,
          children: [
            ContentCard(
              child: markDown(content[1]),
            ),
          ],
        ),
      ],
    );
  }
}
