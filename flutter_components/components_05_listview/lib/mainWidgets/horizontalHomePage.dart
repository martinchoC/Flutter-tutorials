import 'package:flutter/material.dart';

class HorizontalHomePage extends StatefulWidget {
  const HorizontalHomePage({Key? key}) : super(key: key);

  @override
  State<HorizontalHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HorizontalHomePage> {
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
      body: SizedBox(
        height: MediaQuery.of(context).size.height * 0.2,
        child: SafeArea(
          child: ListView.builder(
            padding: const EdgeInsets.all(10),
            scrollDirection: Axis.horizontal,
            itemCount: list_titles.length,
            itemBuilder: (BuildContext context, int index) {
              return SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Card(
                  color: Colors.blue,
                  child: ListTile(
                    title: Text(list_titles[index]),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
