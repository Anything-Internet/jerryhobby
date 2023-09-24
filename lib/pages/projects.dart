import 'package:flutter/material.dart';
import '../components/content_card.dart';
import '../components/my_scaffold.dart';
import '../components/page_heading.dart';
import '../models/site_items.dart';
import '../util.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  final pageTitle = 'Projects';
  final subTitle =
      'Little projects that keep my skills sharp and help me teach others.';
  List<String> content = [];
  final mdContent = ["projects.md"];

  _ProjectsState() {
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
      children: [
        PageHeading(
          title: pageTitle,
          subTitle: subTitle,
        ),
        Container(
          //padding: textPadding,
          alignment: Alignment.topLeft,
          child: markDown(content[0]),
        ),
        Column(
          children: projectCards(context),
        ),
      ],
    );
  }
}

projectCards(BuildContext context) {
  List<Widget> mySites = [];
  sites.forEach(
    (item) {
      mySites.add(
        ContentCard(
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
  return mySites;
}
