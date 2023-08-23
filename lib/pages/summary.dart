import 'package:flutter/material.dart';
import 'components/app_utils.dart';
import 'page_content.dart';

class Summary extends StatelessWidget {
  Summary({Key? key}) : super(key: key);
  final pageTitle = 'Summary';
  final content = pageContent("summary");

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
