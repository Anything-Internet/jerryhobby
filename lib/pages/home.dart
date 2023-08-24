import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'components/app_utils.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  final pageTitle = 'Introducing Jerry';

  late String content = "loading...";
  late EdgeInsets textPadding = EdgeInsets.fromLTRB(30, 10, 30, 0);

  loadAsset(fileName) async {
    return rootBundle.loadString("assets/content/$fileName");
  }

  HomeState() {
    loadAsset("home.md").then((value) {
      setState(() {
        content = value;
      });
    });
  }

  @override
  Widget build(context) {
    return ListView(
      primary: false,
      padding: const EdgeInsets.all(0),
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
        Divider(),
        Container(
          child: SelectableText(
            'Scan the QR code to open \n'
            'this site on your mobile device.',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/frame.png"),
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}
