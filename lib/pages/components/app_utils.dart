import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:url_launcher/url_launcher.dart';

launchURLBrowser(url) async {
  Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}

markDown(String content){
  return  MarkdownBody(
      styleSheet: MarkdownStyleSheet(
        horizontalRuleDecoration: ShapeDecoration(
          color: Colors.black,
          shape: Border.all(
            color: Colors.black,
            width: 0.2,
          ),
        ),
      ),
      selectable: true,
      data: content);
}