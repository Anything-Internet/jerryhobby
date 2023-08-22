import 'package:flutter/material.dart';
import 'components/app_utils.dart';

class Download extends StatelessWidget {
  const Download({Key? key}) : super(key: key);
  final pageTitle = 'Download';

  @override
  Widget build(context) {
    EdgeInsets textPadding = EdgeInsets.fromLTRB(30, 10, 30, 10);

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
          child: Text(
            "You can download a printable copy of my resume here: (coming soon",
          ),
        ),
      ],
    );
  }
}
