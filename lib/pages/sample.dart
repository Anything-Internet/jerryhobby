import 'package:flutter/material.dart';
import '../components/my_scaffold.dart';
import '../util.dart';

class Articles extends StatefulWidget {
  const Articles({super.key});

  @override
  State<Articles> createState() => _ArticlesState();
}

class _ArticlesState extends State<Articles> {
  final pageTitle = 'title';
  late String content = "loading...";
  final mdContent = "sample.md";

  _ArticlesState() {
    loadAsset(mdContent).then((value) {
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
