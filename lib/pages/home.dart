import 'package:flutter/material.dart';
import 'components/app_utils.dart';
import 'page_content.dart';


class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key) {
    print("Home: constructor");
  }
  final pageTitle = 'Introducing Jerry';
  final content = pageContent("home");

  @override
  Widget build(context) {
    return ListView(
      primary: false,
      padding: const EdgeInsets.all(0),
      children: [
        Center(
          child: Text(
            pageTitle,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        horizontalDivider(),
        Container(
          padding: textPadding,
          alignment: Alignment.topLeft,
          child: Text(content),
        ),
        horizontalDivider(),
        Container(
          padding: textPadding,
          alignment: Alignment.topLeft,
          child: Text(
            'Scan the QR code to open this site on your mobile device.',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/frame.png"),
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}
