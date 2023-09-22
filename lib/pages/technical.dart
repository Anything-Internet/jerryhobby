import 'package:flutter/material.dart';
import '../components/my_scaffold.dart';
import '../util.dart';

class Technical extends StatefulWidget {
  const Technical({super.key});

  @override
  State<Technical> createState() => _TechnicalState();
}

class _TechnicalState extends State<Technical> {
  final pageTitle = 'Technical Skills';
  late String content = "loading...";
  final mdContent = "technical.md";

  _TechnicalState() {
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
