import 'package:flutter/material.dart';
import '../components/my_scaffold.dart';
import '../util.dart';

class Resume extends StatefulWidget {
  const Resume({super.key});

  @override
  State<Resume> createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  final pageTitle = 'Resume';
  late String content = "loading...";
  final mdContent = "resume.md";

  _ResumeState() {
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
    return ListView(
      primary: false,
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
        SizedBox(height: 20),
        Container(
          alignment: Alignment.topLeft,
          child: TextButton(
              child: Text("Business Analyst Resume",
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
