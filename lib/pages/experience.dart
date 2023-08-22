import 'package:flutter/material.dart';
import 'components/app_utils.dart';

class Experience extends StatelessWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Experience',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          horizontalDivider(),
        ],
      ),
    );
  }
}
