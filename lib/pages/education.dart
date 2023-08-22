import 'package:flutter/material.dart';
import 'components/app_utils.dart';

class Education extends StatelessWidget {
  const Education({Key? key}) : super(key: key);
  final pageTitle = 'Education';

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
              "I've spent my entire life studying and teaching myself everything"
              "I need to know to be a successful software engineer, "
              "project manager, and businessman."
          ),
        ),
      ],
    );
  }
}
