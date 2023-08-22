import 'package:flutter/material.dart';
import 'components/app_utils.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);
  final pageTitle = 'Contact';

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
              "I'm always interested in new opportunities. If you'd like to contact me, "
              "please send an email to: \n\nJerry[at]JerryHobby[dot]com"
          ),
        ),
      ],
    );
  }
}
