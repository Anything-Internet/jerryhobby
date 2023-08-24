import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:url_launcher/url_launcher.dart';

sendMail() async {
  final Uri uri = Uri(
      scheme: 'mailto',
      path: 'Jerry@JerryHobby.com',
      queryParameters: {'subject': 'JerryHobby.com Inquiry'});

  var url = uri.toString();

  if (await canLaunchUrl(uri)) {
    print("launching $url");
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}

launchURLBrowser(url) async {
  Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
    print("launching $url");
  } else {
    throw 'Could not launch $url';
  }
}

markDown(String content) {
  return MarkdownBody(
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
