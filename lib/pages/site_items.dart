import 'package:flutter/material.dart';

final List<SiteItem> sites = [
  SiteItem(
      'Chess Trainer',
      AssetImage('assets/images/chesstrainer.png'),
      '''
Chess Trainer is a chess training app written in Flutter/Dart. It allows you to click through some puzzles.  But the moves don't work yet.  

I intend to tie it into StockFish and create sessions so that you can share your session.  That allows you to receive predefined drills from a chess instructor.
''',
      'https://jerryhobby.com/chesstrainer/'),
  SiteItem(
      'Magic 8-Ball',
      AssetImage('assets/images/8ball.png'),
'''
Magic 8-Ball is a simple app for Android and iOS. It is written in Flutter/Dart.  

This is a basic beginner app based on the Magic 8-Ball toy.
''',
      'https://jerryhobby.com/magic8ball/'),
  SiteItem(
      'GameHub',
      AssetImage('assets/images/gameon.png'),
      '''
 GameHub is an app for browsing computer games. It is written in React and TypeScript.
 
 Currently it lets you browse games by genre and platform.  It also lets you search for games by name.  It is a work in progress.
  ''',
      'https://gamehub.jerryhobby.com/'),
  SiteItem(
    'Call Journal',
    AssetImage('assets/images/calllogicon.png'),
    '''
Call Journal is a production application that I created with React/TypeScript. However, this version is written in Flutter/Dart.

This is barely functional at the moment.  The production version (not shown here) is a call center logging system used in Airline Reservations.
''',
    'https://jerryhobby.com/calljournal/',
  ),
  SiteItem(
      "My Photos",
      AssetImage('assets/images/hobbyphotography.png'),
'''
Just a basic photo album where I upload photos for my friends and family.

It's a Piwigo photo album. This is not one of my development projects.
''',
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
    return SelectableText(
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

  Widget buildImage(BuildContext context) =>
      Image(image: image, width: 80,);
  Widget buildUrl(BuildContext context) => SelectableText(url);
}
