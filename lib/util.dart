// functions needed throughout the app
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:url_launcher/url_launcher.dart';

class Util {
  static late Function toggleTheme;
  static late Function getThemeMode;
}

const String kAppName = "JerryHobby.com";
const String kImageAssetPath = "assets/images";
const String kContentAssetPath = "assets/content";

launchURLBrowser(var link) async {
  String linkUrl;
  Uri linkUri;
  String linkType = link.runtimeType.toString();

  if (linkType == "String") {
    linkUrl = link;
    linkUri = Uri.parse(link);
  } else if (linkType == "_Uri") {
    linkUri = link;
    linkUrl = link.toString();
  } else {
    throw 'Could not identify $link';
  }

  if (await canLaunchUrl(linkUri)) {
    print("Opening linkUri: ${linkUri.toString()}");
    await launchUrl(linkUri);
  } else {
    throw 'Could not open $linkUrl';
  }
}

sendMail() async {
  final Uri uri = Uri(
      scheme: 'mailto',
      path: 'Jerry@JerryHobby.com',
      queryParameters: {'subject': 'JerryHobby.com Inquiry'});
  await launchURLBrowser(uri);
}

loadAssetMarkdownContent(fileName) async {
  return rootBundle.loadString("$kContentAssetPath/$fileName");
}

markDown(String content) {
  return MarkdownBody(
      //styleSheet: markDownStyleSheet(),
      selectable: true,
      data: content);
}
