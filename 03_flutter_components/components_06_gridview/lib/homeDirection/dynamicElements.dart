import 'package:flutter/material.dart';

class DynamicElementsHomePage extends StatelessWidget {
  List<Color> listMyColors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.pink
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GridView.builder(
          itemCount: listMyColors.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, int index) {
            return Container(color: listMyColors[index]);
          },
        ),
      ),
    );
  }
}
