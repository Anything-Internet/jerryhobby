import 'package:flutter/material.dart';
import 'footer.dart';
import 'my_appbar.dart';

// TODO: Add drawer as alternative to NavBar
// TODO: Add page margins to Scaffold

myScaffold({context, body}) => Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: MyAppBar(context),
      body: Container(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 10),
        child:
            body(),

      ),
      bottomNavigationBar: const Footer(),
    );
