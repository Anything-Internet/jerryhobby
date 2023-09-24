import 'package:flutter/material.dart';
import '../components/content_card.dart';
import '../components/my_scaffold.dart';
import '../components/page_heading.dart';
import '../util.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  final pageTitle = 'Contact Me';
  List<String> content = [];
  final mdContent = ["contact.md"];

  _ContactState() {
    mdContent.forEach((element) {
      content.add("loading...");
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
        PageHeading(title: pageTitle),
        //const Divider(),
        Container(
          //padding: textPadding,
          alignment: Alignment.topLeft,
          child: markDown(content[0]),
        ),
        ContentCard(
          child: TextButton(
              child: Text(
                "713-298-4862\n"
                "Jerry@JerryHobby.com",
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
