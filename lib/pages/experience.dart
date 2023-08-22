import 'package:flutter/material.dart';
import 'components/app_utils.dart';

class Experience extends StatelessWidget {
  const Experience({Key? key}) : super(key: key);
  final pageTitle = 'Experience';

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
              "My career and projects history will be here."
          ),
        ),
      ],
    );
  }
}
