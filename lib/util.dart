// functions needed throughout the app
import 'package:flutter/material.dart';
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

const String kDefaultFontFamily = "SF Pro Display";

const Icon kIconArticle = Icon(Icons.article_outlined);
const Icon kIconContact = Icon(Icons.contact_page_outlined);
const Icon kIconExperience = Icon(Icons.dashboard_customize_outlined);
const Icon kIconHome = Icon(Icons.home_outlined);
const Icon kIconResume = Icon(Icons.table_chart_outlined);
const Icon kIconTechnical = Icon(Icons.code_outlined);
const Icon kIconBuildProcess = Icon(Icons.bubble_chart_outlined);
const Icon kIconLeadership = Icon(Icons.leaderboard_outlined);
const Icon kIconProjects = Icon(Icons.work_outline_outlined);

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

  try {
    if (await canLaunchUrl(linkUri)) {
      print("Opening linkUri: ${linkUri.toString()}");
      await launchUrl(linkUri);
    } else {
      throw 'Could not open $linkUrl';
    }
  } catch (e) {
    print("Error opening linkUri: ${linkUri.toString()}");
    print(e);
  }
}

sendMail() {
  final Uri uri = Uri(
      scheme: 'mailto',
      path: 'Jerry@JerryHobby.com',
      queryParameters: {'subject': 'JerryHobby.com Inquiry'});
  launchUrl(uri);
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
