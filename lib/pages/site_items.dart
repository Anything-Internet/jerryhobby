import 'package:flutter/material.dart';

final List<SiteItem> sites = [
  SiteItem(
      'Chess Trainer',
      AssetImage('assets/images/chesstrainer.png'),
      'Chess Trainer is a chess training app for Android and iOS. It is written in Dart and uses Flutter for the UI.',
      'https://jerryhobby.com/chesstrainer/'),
  SiteItem(
      'Magic 8-Ball',
      AssetImage('assets/images/8ball.png'),
      'Magic 8-Ball is a simple app for Android and iOS. It is written in Dart and uses Flutter for the UI.',
      'https://jerryhobby.com/magic8ball/'),
  SiteItem(
      'GameHub',
      AssetImage('assets/images/gameon.png'),
      'GameHub is an app for browsing computer games.  It is written in React and TypeScript.',
      'https://gamehub.jerryhobby.com/'),
  SiteItem(
    'Call Journal',
    AssetImage('assets/images/calllogicon.png'),
    'Call Journal is an app for Android and iOS. '
        'It is written in Dart and uses Flutter for the UI.'
        'It is a call log with a few extra features.'
        'Call Journal is an app for Android and iOS. '
        'It is written in Dart and uses Flutter for the UI.'
        'Call Journal is an app for Android and iOS. '
        'It is written in Dart and uses Flutter for the UI.'
        'Call Journal is an app for Android and iOS. '
        'It is written in Dart and uses Flutter for the UI.',
    'https://jerryhobby.com/calljournal/',
  ),
  SiteItem(
      "My Photos",
      AssetImage('assets/images/hobbyphotography.png'),
      "Just a photo album.  I didn't write it.",
      "https://jerryhobby.com/piwigo/"),
];

//////////////////////////////////////////////////////////////////

/// The base class for the different types of items the list can contain.
abstract class ListItem {
  /// The title line to show in a list item.
  Widget buildTitle(BuildContext context);
  Widget buildDescription(BuildContext context);
}

/// A ListItem that contains data to display a heading.
class HeadingItem implements ListItem {
  final String heading;
  HeadingItem(this.heading);

  @override
  Widget buildTitle(BuildContext context) {
    return Text(
      heading,
      style: Theme.of(context).textTheme.headlineSmall,
    );
  }

  @override
  Widget buildDescription(BuildContext context) => const SizedBox.shrink();
}

class SiteItem implements ListItem {
  String title;
  HeadingItem heading = HeadingItem("Under Development");
  AssetImage image;
  String description;
  String url;
  SiteItem(this.title, this.image, this.description, this.url);

  @override
  Widget buildTitle(BuildContext context) => Text(title);
  @override
  Widget buildDescription(BuildContext context) => Text(description);

  Widget buildImage(BuildContext context) => Image(image: image);
  Widget buildUrl(BuildContext context) => Text(url);
}
