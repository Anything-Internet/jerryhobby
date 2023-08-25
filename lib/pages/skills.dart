import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'components/app_utils.dart';

class Skills extends StatefulWidget {
  Skills({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return SkillsState();
  }
}

late EdgeInsets textPadding = EdgeInsets.fromLTRB(30, 10, 30, 0);

class SkillsState extends State<Skills> {
  final pageTitle = 'Skills';

  late String content = "loading...";
  late String contentA = "loading...";
  late String contentB = "loading...";

  loadAsset(fileName) async {
    return rootBundle.loadString("assets/content/$fileName");
  }

  SkillsState() {
    loadAsset("skills.md").then((value) {
      setState(() {
        content = value;
      });
    });
    loadAsset("skillsa.md").then((value) {
      setState(() {
        contentA = value;
      });
    });
    loadAsset("skillsb.md").then((value) {
      setState(() {
        contentB = value;
      });
    });
  }

  @override
  Widget build(context) {
    return ListView(
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
        _buildLayout(context, pageTitle, contentA, contentB),
        //return _buildListView(context, pageTitle, content);
      ],
    );
  }
}

_buildLayout(context, pageTitle, contentA, contentB) => LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 600) {
          return _buildWideContainers(
              context, constraints, pageTitle, contentA, contentB);
        } else {
          return _buildNormalContainer(
              context, constraints, pageTitle, contentA, contentB);
        }
      },
    );

_buildWideContainers(context, constraints, pageTitle, contentA, contentB) =>
    Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            padding: textPadding,
            //width: constraints.maxWidth / 2,
            width: 300,
            child: markDown(contentA),
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: textPadding,
            //width: constraints.maxWidth / 2,
            width: 300,
            child: markDown(contentB),
          ),
        ],
      ),
    );

_buildNormalContainer(context, constraints, pageTitle, contentA, contentB) =>
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft, padding: textPadding,
            child: markDown(contentA),
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: textPadding,
            child: markDown(contentB),
          ),
        ],
      ),
    );
//
// _buildListView(context, pageTitle, content) => ListView(
//       children: [
//         Center(
//           child: SelectableText(
//             pageTitle,
//             style: Theme.of(context).textTheme.headlineMedium,
//           ),
//         ),
//         Divider(),
//         Container(
//           padding: textPadding,
//           alignment: Alignment.topLeft,
//           child: markDown(content),
//         ),
//       ],
//     );
