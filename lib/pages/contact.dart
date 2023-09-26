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
  final pageIcon = Icon(Icons.contact_page_outlined);
  final pageTitle = 'Contact Me';
  final subTitle = 'How to reach me.';
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
        PageHeading(
            icon: pageIcon,
            subTitle: subTitle,
            title: pageTitle),
        //const Divider(),
        Container(
          //padding: textPadding,
          alignment: Alignment.topLeft,
          child: markDown(content[0]),
        ),
        ContentCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Jerry Hobby",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                "Houston, TX",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                "713-298-4862",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(height: 10),
              TextButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.all(0)),
                ),
                  child: Text(
                    "Jerry@JerryHobby.com",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  onPressed: () {
                    sendMail();
                  }),
            ],
          ),
        ),
      ],
    );
  }
}
