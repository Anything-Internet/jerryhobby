import 'package:flutter/material.dart';
import 'components/app_utils.dart';

class Download extends StatelessWidget {
  const Download({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Download',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          horizontalDivider(),
        ],
      ),
    );
  }
}
