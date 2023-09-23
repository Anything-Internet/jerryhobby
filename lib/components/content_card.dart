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
    Color borderColor =
        Theme.of(context).colorScheme.onSecondary.withOpacity(0.25);
    double cardWidth = (width == null) ? double.infinity : width!;
    Color backgroundColor =
        (bgColor == null) ? Theme.of(context).colorScheme.secondary : bgColor!;

    // borderColor =
    // Colors.blue.withOpacity(0.5);

    return Container(
      width: cardWidth,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(top: 40, bottom: 40),
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
