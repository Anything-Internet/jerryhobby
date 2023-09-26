import 'package:flutter/material.dart';

class PageHeading extends StatelessWidget {
  late final String title;
  late final String? subTitle;
  late final Icon? icon;

  PageHeading({
    required this.title,
    this.subTitle,
    this.icon,
  }) : super(key: UniqueKey());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
          (icon != null)
              ? Container(
            margin: EdgeInsets.only(right: 10),
            child: icon,
          )
              : SizedBox(height: 0),
          SelectableText(
            title,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ]),
        if (subTitle != null)
          Center(
            child: SelectableText(
              subTitle!,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        SizedBox(height: 40),
        //Divider(),
      ],
    );
  }
}
