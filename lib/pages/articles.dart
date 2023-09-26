import 'package:flutter/material.dart';
import '../components/content_card.dart';
import '../models/documents.dart';
import '../components/my_scaffold.dart';
import '../components/page_heading.dart';
import '../util.dart';

class Articles extends StatefulWidget {
  const Articles({super.key});

  @override
  State<Articles> createState() => _ArticlesState();
}

class _ArticlesState extends State<Articles> {
  final pageIcon = Icon(Icons.article_outlined);
  final pageTitle = 'Articles';
  final subTitle = 'Jerry\'s wisdom on leadership and technology.';
  List<String> content = [];
  String? document;
  String selected ="";
  final mdContent = ["articles.md"];
  final Documents documents = Documents();

  _ArticlesState() {
    mdContent.forEach((element) {
      content.add("loading...");
      loadAssetMarkdownContent(element).then((value) {
        setState(() {
          content[mdContent.indexOf(element)] = value;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return myScaffold(context: context, body: body);
  }

  body() {
    return ListView(
      primary: false,
      children: [
        PageHeading(
          icon: pageIcon,
          title: pageTitle,
          subTitle: subTitle,
        ),
        //const Divider(),
        Container(
          alignment: Alignment.topLeft,
          child: markDown(content[0]),
        ),
        SizedBox(
          height: 20,
        ),
        Wrap(
          children: [
          ContentCard(
            maxWidth: 275,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...documents.getCategories().map((element) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        element,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      ...documents.getDocuments(element).map((element) {
                        return TextButton(
                          onPressed: () {
                            setState(() {
                              selected = element.title!;
                              document = element.content;
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.arrow_right,
                                color: Theme.of(context).colorScheme.onPrimary),
                            Flexible(
                              child: Text(
                                element.title!,
                                style: (selected == element.title)
                                    ? Theme.of(context).textTheme.titleSmall
                                  : Theme.of(context).textTheme.titleSmall?.copyWith(
                                    color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.5)
                                  ),
                              ),
                            ),
                          ],
                        ),
                        );
                      }),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  );
                }),
              ],
            ),
          ),

        (document == null)
            ? Container()
            : ContentCard(
          maxWidth: 600,
          child: markDown(
              document ??  ""),
        ),
      ],
    ),
      ],
    );
  }
}
