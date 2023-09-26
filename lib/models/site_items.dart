import 'package:flutter/material.dart';
import '/util.dart';

final List<SiteItem> sites = [
  SiteItem(
      'Travel App Mock-up',
      ExactAssetImage('$kImageAssetPath/figma_travel_app.gif', scale: 2),
      '''
This is only a graphical mock-up of a travel app.  It is not functional. It was
developed in Figma.  It shows the original wireframe, the design with content,
and finally the design with colors and styles.  It is not a real app.
''',
      ''),
  SiteItem(
      'Clima Weather',
      ExactAssetImage('$kImageAssetPath/climademo.gif', scale: 2),
      '''
This is a weather app for Android and iOS. It is written in Flutter/Dart.
It uses the OpenWeatherMap API to get the weather data.

It does not work properly on the Web due to a bug in the Flutter module
that determines GPS location.  It works fine on Android and iOS.
''',
      ''),
  SiteItem(
      'BMI Calculator',
      AssetImage('$kImageAssetPath/bmicalculator.png'),
      '''
Are you healthy?  This basic BMI calculator may provide some insights.  
It is written in Flutter/Dart.  Weight in pounds and height in inches.
''',
      'https://jerryhobby.com/bmicalculator/'),
  SiteItem(
      'Destini',
      AssetImage('$kImageAssetPath/destini.png'),
      '''
A demo app of an interactive story.  It is written in Flutter/Dart.

You make choices that impact the direction of the story.  It's only
a demo app, so the story is very short. Perhaps someday I'll write 
a longer story for it and add some graphics.
''',
      'https://jerryhobby.com/destini/'),
  SiteItem(
      'Quizzler',
      AssetImage('$kImageAssetPath/quizzler.png'),
      '''
Quizzler is a simple quiz app for Android and iOS. It is written in Flutter/Dart.

It has 100 questions.  It keeps track of your score.
''',
      'https://jerryhobby.com/quizzler/'),
  SiteItem(
      'Xylophone',
      AssetImage('$kImageAssetPath/xylophone.png'),
      '''
Xylophone is a simple app for Web, Mac, Android and iOS. It is written in Flutter/Dart.
''',
      'https://jerryhobby.com/xylophone/'),
  SiteItem(
      'Chess Trainer',
      AssetImage('$kImageAssetPath/chesstrainer.png'),
      '''
Chess Trainer is a chess training app written in Flutter/Dart. It allows you to click through some puzzles.  But the moves don't work yet.  

I intend to tie it into StockFish and create sessions so that you can share your session.  That allows you to receive predefined drills from a chess instructor.
''',
      'https://jerryhobby.com/chesstrainer/'),
  SiteItem(
      'Magic 8-Ball',
      AssetImage('$kImageAssetPath/8ball.png'),
      '''
Magic 8-Ball is a simple app for Android and iOS. It is written in Flutter/Dart.  

This is a basic beginner app based on the Magic 8-Ball toy.
''',
      'https://jerryhobby.com/magic8ball/'),
  SiteItem(
      'GameHub',
      AssetImage('$kImageAssetPath/gameon.png'),
      '''
 GameHub is an app for browsing computer games. It is written in React and TypeScript.
 
 Currently it lets you browse games by genre and platform.  It also lets you search for games by name.  It is a work in progress.
  ''',
      'https://gamehub.jerryhobby.com/'),
  SiteItem(
    'Call Journal',
    AssetImage('$kImageAssetPath/calllogicon.png'),
    '''
Call Journal is a production application that I created with React/TypeScript. However, this version is written in Flutter/Dart.

This is barely functional at the moment.  The production version (not shown here) is a call center logging system used in Airline Reservations.
''',
    'https://jerryhobby.com/calljournal/',
  ),
  SiteItem(
      "My Photos",
      AssetImage('$kImageAssetPath/hobbyphotography.png'),
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
    return Text(
      heading,
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }

  @override
  Widget buildDescription(BuildContext context) => const SizedBox.shrink();
}

class SiteItem implements ListItem {
  String title;
  HeadingItem heading = HeadingItem("Under Development");
  ImageProvider image;
  String description;
  String url;
  SiteItem(this.title, this.image, this.description, this.url);

  @override
  Widget buildTitle(BuildContext context) => Text(title);
  @override
  Widget buildDescription(BuildContext context) => Text(description.trim());

  Widget buildImage(BuildContext context) {
    if (url == '') {
      return Image(image: image);
    } else {
      return InkWell(
          onTap: () {
            launchURLBrowser(url);
          },
          child: Image(image: image),
      );
    }
  }

  Widget buildUrl(BuildContext context) => Text(url);
}
