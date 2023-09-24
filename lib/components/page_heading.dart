
import 'package:flutter/material.dart';
class PageHeading extends StatelessWidget {
  late final String title;
  late final String? subTitle;

  PageHeading({
    required this.title,
    this.subTitle,

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
      if (subTitle != null)
        Center(
          child: SelectableText(
            subTitle!,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        SizedBox(height: 40),
        //Divider(),
    ],
    );
  }
}