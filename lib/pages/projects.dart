import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'components/app_utils.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'site_items.dart';

class Projects extends StatefulWidget {
  Projects({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ProjectsState();
  }
}

class ProjectsState extends State<Projects> {
  final pageTitle = 'Projects';

  late String content = "loading...";
  late EdgeInsets textPadding = EdgeInsets.fromLTRB(30, 10, 30, 0);

  loadAsset(fileName) async {
    return rootBundle.loadString("assets/content/$fileName");
  }

  ProjectsState() {
    loadAsset("projects.md").then((value) {
      setState(() {
        content = value;
      });
    });
  }

  @override
  Widget build(context) {
    return Column(
      children: [
        SelectableText(
          'Current Projects',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Container(
          padding: textPadding,
          alignment: Alignment.topLeft,
          child: MarkdownBody(selectable: true, data: content),
        ),
        horizontalDivider(),
        Expanded(
          child: siteRows(),
        ),
      ],
    );
  }

  siteRows() {
    return ListView.separated(
        separatorBuilder: (context, index) => Container(
              height: 10,
        ),

        padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
        // Let the ListView know how many items it needs to build.
        itemCount: sites.length,
        // Provide a builder function. This is where the magic happens.
        // Convert each item into a widget based on the type of item it is.
        itemBuilder: (context, index) {
          final item = sites[index];

          return Material(
            elevation: 3,
          child:
            ListTile(
              tileColor: Colors.white,
            minLeadingWidth: 90,

            visualDensity: VisualDensity.comfortable,
            titleTextStyle: Theme.of(context).textTheme.headlineSmall,
            title: item.buildTitle(context),
            subtitle: item.buildDescription(context),
            leading: item.buildImage(context),
            onTap: () {
              _launchURLBrowser(item.url);
            },
          ),
          );
        },
      );
  }
}

_launchURLBrowser(url) async {
  Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}

