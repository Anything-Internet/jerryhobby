import 'package:flutter/material.dart';
import '../components/my_navbar.dart';
import '../util.dart';

MyAppBar(context) {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: Theme.of(context).colorScheme.primary,
    title: MyNavBar(),
    toolbarHeight: 110,

    actions: [
      IconButton(
        icon: const Icon(Icons.brightness_4),
        tooltip: 'Toggle Theme',
        onPressed: () {
          Util.toggleTheme();
        },
      ),
    ],
  );
}
