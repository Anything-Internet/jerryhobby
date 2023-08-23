import 'package:flutter/material.dart';
import 'components/app_utils.dart';
import 'page_content.dart';

class Contact extends StatelessWidget {
  Contact({Key? key}) : super(key: key);
  final pageTitle = 'Contact';
  final content = pageContent("contact");

  @override
  Widget build(context) {
    return ListView(
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
      ],
    );
  }
}
