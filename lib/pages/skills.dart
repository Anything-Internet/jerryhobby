import 'package:flutter/material.dart';
import 'components/app_utils.dart';
import 'page_content.dart';

class Skills extends StatelessWidget {
  Skills({Key? key}) : super(key: key);
  final pageTitle = 'Skills';
  final content = pageContent("skills");

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
        horizontalDivider(),
        Container(
          padding: textPadding,
          alignment: Alignment.topLeft,
          child: SelectableText(content),
        ),
      ],
    );
  }
}
