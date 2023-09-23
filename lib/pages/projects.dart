import 'package:flutter/material.dart';
import '../components/content_card.dart';
import '../components/my_scaffold.dart';
import '../models/site_items.dart';
import '../util.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  final pageTitle = 'Projects';
  late String content = "loading...";
  final mdContent = "projects.md";

  _ProjectsState() {
    loadAssetMarkdownContent(mdContent).then((value) {
      setState(() {
        content = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return myScaffold(context: context, body: body);
  }

  body() {
    return Column(
      children: [
        Center(
          child: SelectableText(
            pageTitle,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
        const Divider(),
        Container(
          //padding: textPadding,
          alignment: Alignment.topLeft,
          child: markDown(content),
        ),
        const Divider(),
        Expanded(
          child: siteRows(context),
        ),
      ],
    );
  }
}

siteRows(BuildContext context) {
  return ListView.separated(
    separatorBuilder: (context, index) => Container(
      height: 10,
    ),

    padding: const EdgeInsets.fromLTRB(5, 0, 5, 10),
    // Let the ListView know how many items it needs to build.
    itemCount: sites.length,
    // Provide a builder function. This is where the magic happens.
    // Convert each item into a widget based on the type of item it is.
    itemBuilder: (context, index) {
      final item = sites[index];

      return SelectionArea(
        child: ContentCard(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 130,
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.fromLTRB(0, 18, 20, 20),
                child: item.buildImage(context),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.title,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const Divider(
                      indent: 0,
                      endIndent: 0,
                    ),
                    item.buildDescription(context),
                    const SizedBox(
                      height: 10,
                    ),
                    item.url != ''
                        ? const SizedBox.shrink()
                        : SizedBox(
                            width: 300,
                            child: item.buildImage(context),
                          ),
                    InkWell(
                      onTap: () {
                        launchURLBrowser(item.url);
                      },
                      child: Text(
                        item.url,
                        style: const TextStyle(
                          //color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
