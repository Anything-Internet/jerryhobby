import 'package:flutter/material.dart';
import 'components/app_utils.dart';

class Objectives extends StatelessWidget {
  const Objectives({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Objectives',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          horizontalDivider(),
        ],
      ),
    );
  }
}
