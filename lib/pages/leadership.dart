import 'package:flutter/material.dart';
import '../components/my_scaffold.dart';
import '../util.dart';

class Leadership extends StatefulWidget {
  const Leadership({super.key});

  @override
  State<Leadership> createState() => _LeadershipState();
}

class _LeadershipState extends State<Leadership> {
  final pageTitle = 'Leadership';
  late String content = "loading...";
  final mdContent = "leadership.md";

  _LeadershipState() {
    loadAssetMarkdownContent(mdContent).then((value) {
      setState(() {
        content = value;
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
        Container(
          //padding: textPadding,
          alignment: Alignment.topLeft,
          child: markDown(content),
        ),
      ],
    );
  }
}
