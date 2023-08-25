import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:jerry_hobby/pages/components/theme.dart';
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
      styleSheet: markDownStyleSheet(),
      selectable: true,
      data: content);
}
