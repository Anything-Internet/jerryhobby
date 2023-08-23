import 'package:flutter/material.dart';
import 'components/app_utils.dart';
import 'page_content.dart';

class Objectives extends StatelessWidget {
  Objectives({Key? key}) : super(key: key);
  final pageTitle = 'Objectives';
  final content = pageContent("objectives");

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
