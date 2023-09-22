import 'package:flutter/material.dart';
import '../components/my_scaffold.dart';
import '../util.dart';

class BuildProcess extends StatefulWidget {
  const BuildProcess({super.key});

  @override
  State<BuildProcess> createState() => _BuildProcessState();
}

class _BuildProcessState extends State<BuildProcess> {
  final pageTitle = 'Build Process';
  late String content = "loading...";
  final mdContent = "build_process.md";

  _BuildProcessState() {
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
