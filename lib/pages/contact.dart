import 'package:flutter/material.dart';
import 'components/app_utils.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Contact',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          horizontalDivider(),
        ],
      ),
    );
  }
}
