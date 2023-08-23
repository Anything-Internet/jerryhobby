import 'package:flutter/material.dart';
import 'package:mi_card/pages/site_items.dart';
import 'package:url_launcher/url_launcher.dart';

import 'components/app_utils.dart';
import 'page_content.dart';

class Projects extends StatelessWidget {
  Projects({Key? key}) : super(key: key);
  final String content = pageContent("projects");

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
          child: SelectableText(content),
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

