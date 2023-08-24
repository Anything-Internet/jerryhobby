import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'components/app_utils.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class Skills extends StatefulWidget {
  Skills({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return SkillsState();
  }
}

class SkillsState extends State<Skills> {
  final pageTitle = 'Skills';

  late String content = "loading...";
  late EdgeInsets textPadding = EdgeInsets.fromLTRB(30, 10, 30, 0);

  loadAsset(fileName) async {
    return rootBundle.loadString("assets/content/$fileName");
  }

  SkillsState() {
    loadAsset("skills.md").then((value) {
      setState(() {
        content = value;
      });
    });
  }

  @override
  Widget build(context) {
    return ListView(
      children: [
        Center(
          child: SelectableText(
            pageTitle,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        horizontalDivider(),
        Container(
          padding: textPadding,
          alignment: Alignment.topLeft,
          child: MarkdownBody(selectable: true, data: content),
        ),
      ],
    );
  }
}
