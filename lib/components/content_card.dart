import 'package:flutter/material.dart';

class ContentCard extends StatelessWidget {
  final Widget child;
  final Widget? image;
  final double? width;
  late final Color? bgColor;

  ContentCard({
    required this.child,
    this.image,
    this.width,
    this.bgColor,
  }) : super(key: UniqueKey());

  @override
  Widget build(BuildContext context) {
    Color borderColor = Theme.of(context).colorScheme.onSecondary;
    double cardWidth = (width == null) ? double.infinity : width!;
    Color backgroundColor =
        (bgColor == null) ? Theme.of(context).colorScheme.secondary : bgColor!;

    return Container(
      width: cardWidth,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(top: 40, bottom: 40),
      decoration: BoxDecoration(
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
