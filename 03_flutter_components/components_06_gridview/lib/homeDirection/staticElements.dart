import 'package:flutter/material.dart';

class StaticElementsHomePage extends StatelessWidget {
  const StaticElementsHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 10, //space between rows
          crossAxisSpacing: 10, //space between columns
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.all(10),
          children: <Widget>[
            Container(color: Colors.yellow),
            Container(color: Colors.green),
            Container(color: Colors.green),
            Container(color: Colors.yellow),
          ],
        ),
      ),
    );
  }
}
