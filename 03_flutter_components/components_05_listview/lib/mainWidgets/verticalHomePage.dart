import 'package:flutter/material.dart';

class VerticalHomePage extends StatefulWidget {
  @override
  State<VerticalHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<VerticalHomePage> {
  List<String> list_titles = <String>[
    "Widget 1",
    "Widget 2",
    "Widget 3",
    "Widget 4",
    "Widget 5",
    "Widget 6",
    "Widget 7",
    "Widget 8",
    "Widget 9",
    "Widget 10",
    "Widget 11",
    "Widget 12",
    "Widget 13"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: list_titles.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: Colors.blue,
              child: ListTile(
                title: Text(list_titles[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}
