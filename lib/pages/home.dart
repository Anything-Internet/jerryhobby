import 'package:flutter/material.dart';
import '../components/my_scaffold.dart';
import '../util.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final pageTitle = 'Introducing Jerry';

  late String content = "loading...";

  _HomeState() {
    loadAssetMarkdownContent("home.md").then((value) {
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
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: markDown(content),),

              Image(
                image: AssetImage('assets/images/jerry_hobby_headshot.png'),
                width: 200,
                height: 200,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
