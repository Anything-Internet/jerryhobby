import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'components/app_utils.dart';

class Download extends StatefulWidget {
  Download({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return DownloadState();
  }
}

class DownloadState extends State<Download> {
  final pageTitle = 'Download';
  late String content = "loading...";
  late EdgeInsets textPadding = EdgeInsets.fromLTRB(30, 10, 30, 0);
  bool _isLoading = true;

  loadAsset(fileName) async {
    content = await rootBundle.loadString("assets/content/$fileName");

    setState(() {
      _isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    loadAsset("download.md");
  }

  @override
  Widget build(context) {
    return Column(
      children: [
        Center(
          child: SelectableText(
            pageTitle,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        Divider(),
        Container(
          padding: textPadding,
          alignment: Alignment.topLeft,
          child: markDown(content),
        ),
        Container(
          padding: textPadding,
          alignment: Alignment.topLeft,
          child: TextButton(
              child: Text("Business Analyst Resume"),
              onPressed: () {
                launchURLBrowser(
                    "https://JerryHobby.com/resumes/Jerry_Hobby_Senior_Business_Analyst_Resume.pdf");
              }),
        ),
      ],
    );
  }
}
