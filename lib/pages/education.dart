import 'package:flutter/material.dart';
import 'components/app_utils.dart';

class Education extends StatelessWidget {
  const Education({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Education',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          horizontalDivider(),
        ],
      ),
    );
  }
}
