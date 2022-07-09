import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
