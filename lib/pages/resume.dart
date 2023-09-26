import 'package:flutter/material.dart';
import '../components/content_card.dart';
import '../components/my_scaffold.dart';
import '../components/page_heading.dart';
import '../util.dart';

class Resume extends StatefulWidget {
  const Resume({super.key});

  @override
  State<Resume> createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  final pageIcon = kIconResume;
  final subTitle = 'My Resume, for what it\'s worth.';
  final pageTitle = 'Resume';
  List<String> content = [];
  final mdContent = ["resume.md"];

  _ResumeState() {
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
            subTitle: subTitle,
            title: pageTitle),
        //const Divider(),
        Container(
          //padding: textPadding,
          alignment: Alignment.topLeft,
          child: markDown(content[0]),
        ),
        SizedBox(height: 20),
        ContentCard(
          child: TextButton(
              child: Text(
                "Business Analyst Resume",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              onPressed: () {
                launchURLBrowser(
                    "https://JerryHobby.com/resumes/Jerry_Hobby_Senior_Business_Analyst_Resume.pdf");
              }),
        ),
      ],
    );
  }
}
