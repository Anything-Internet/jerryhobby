import 'package:flutter/material.dart';
import '../components/my_scaffold.dart';
import '../util.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  final pageTitle = 'Contact Me';
  late String content = "loading...";
  final mdContent = "contact.md";

  _ContactState() {
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
        const Divider(),
        Container(
          alignment: Alignment.topLeft,
          child: TextButton(
              child: Text("[Jerry@JerryHobby.com]",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              onPressed: () {
                sendMail();
              }),
        ),
      ],
    );
  }
}
