import 'package:flutter/material.dart';
import 'components/app_utils.dart';
class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key) {
    print("Home: constructor");
  }

  @override
  Widget build(context) {
    return Center(
      child: Column(
        children: [
          Text('All About Jerry',
      style: Theme.of(context).textTheme.headlineMedium,
    ),
          horizontalDivider(),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.7,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/frame.png"),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
        mainAxisSize: MainAxisSize.max,
      ),
    );
  }
}
