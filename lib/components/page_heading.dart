
import 'package:flutter/material.dart';
class PageHeading extends StatelessWidget {
  late final String title;
  late final String? subtitle;

  PageHeading({
    required this.title,
    this.subtitle,

  }) : super(key: UniqueKey());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Center(
        child: SelectableText(
          title,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
        SizedBox(height: 40),
        //Divider(),
    ],
    );
  }
}