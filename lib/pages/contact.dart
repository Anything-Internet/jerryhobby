import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'components/app_utils.dart';

class Contact extends StatefulWidget {
  Contact({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ContactState();
  }
}

class ContactState extends State<Contact> {
  final pageTitle = 'Contact Jerry';

  late String content = "loading...";
  late EdgeInsets textPadding = EdgeInsets.fromLTRB(30, 10, 30, 0);

  loadAsset(fileName) async {
    return rootBundle.loadString("assets/content/$fileName");
  }

  ContactState() {
    loadAsset("contact.md").then((value) {
      setState(() {
        content = value;
      });
    });
  }

  @override
  Widget build(context) {
    var textButtonTheme = TextButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.blue.shade700),
        side: MaterialStateProperty.all<BorderSide>(BorderSide.none),
      ),
    );

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
        Container(
          padding: textPadding,
          alignment: Alignment.topLeft,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                  style: textButtonTheme.style,
                  child: Text("Email: Jerry@JerryHobby.com"),
                  onPressed: () {
                    launchURLBrowser("mailto:Jerry@JerryHobby.com");
                  }),
              TextButton(
                  style: textButtonTheme.style,
                  child: Text("Website: https://www.JerryHobby.com"),
                  onPressed: () {
                    launchURLBrowser("https://www.JerryHobby.com");
                  }),
              TextButton(
                  style: textButtonTheme.style,
                  child: Text("Facebook: https://www.facebook.com/JerryHobby"),
                  onPressed: () {
                    launchURLBrowser("https://www.facebook.com/JerryHobby");
                  }),
              TextButton(
                style: textButtonTheme.style,
                child: Text("GitHub Profile:  https://github.com/JerryHobby"),
                onPressed: () {
                  launchURLBrowser("https://github.com/JerryHobby");
                },
              ),
              TextButton(
                style: textButtonTheme.style,
                child: Text(
                    "GitHub Repositories: https://github.com/orgs/Anything-Internet/repositories"),
                onPressed: () {
                  launchURLBrowser(
                      "https://github.com/orgs/Anything-Internet/repositories");
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
