import 'package:flutter/material.dart';
import 'components/app_utils.dart';

class Summary extends StatelessWidget {
  const Summary({Key? key}) : super(key: key);
  final pageTitle = 'Summary';

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
              "A general summary of my skills and experience."
          ),
        ),
      ],
    );
  }
}
