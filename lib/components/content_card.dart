import 'package:flutter/material.dart';

class ContentCard extends StatelessWidget {
  final Widget child;
  final Widget? image;
  final double width;
  final double maxWidth;
  late final Color? bgColor;

  ContentCard({
    required this.child,
    this.image,
    this.width = double.infinity,
    this.maxWidth = double.infinity,
    this.bgColor,
  }) : super(key: UniqueKey());

  @override
  Widget build(BuildContext context) {
    Color borderColor =
        Theme.of(context).colorScheme.onSecondary.withOpacity(0.25);
    double cardWidth = width;
    Color backgroundColor =
        (bgColor == null) ? Theme.of(context).colorScheme.secondary : bgColor!;

    // borderColor =
    // Colors.blue.withOpacity(0.5);

    return Container(
      width: cardWidth,
      constraints: BoxConstraints(
        maxWidth: maxWidth,
      ),
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.fromLTRB(30, 20, 30, 30),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: borderColor.withOpacity(0.15),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(2, 3),
          ),
        ],
        color: backgroundColor,
        border: Border.all(
          color: borderColor,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      //padding: textPadding,
      alignment: Alignment.topLeft,
      child: child,
    );
  }
}
