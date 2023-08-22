import 'package:flutter/material.dart';
import 'components/app_utils.dart';

class Summary extends StatelessWidget {
  const Summary({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Summary',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          horizontalDivider(),
        ],
      ),
    );
  }
}
