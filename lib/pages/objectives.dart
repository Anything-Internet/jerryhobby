import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'components/app_utils.dart';

class Objectives extends StatefulWidget {
  Objectives({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ObjectivesState();
  }
}

class ObjectivesState extends State<Objectives> {
  final pageTitle = 'Objectives';

  late String content = "loading...";
  late EdgeInsets textPadding = EdgeInsets.fromLTRB(30, 10, 30, 0);

  loadAsset(fileName) async {
    return rootBundle.loadString("assets/content/$fileName");
  }

  ObjectivesState() {
    loadAsset("objectives.md").then((value) {
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
        Divider(),
        Container(
          padding: textPadding,
          alignment: Alignment.topLeft,
          child: markDown(content),
        ),
      ],
    );
  }
}
