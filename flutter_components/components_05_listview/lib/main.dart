import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Card(
          color: Colors.amber[600],
          child: ListTile(
            title: Text("Widget 1"),
          ),
        ),
        Card(
          color: Colors.amber[600],
          child: ListTile(
            title: Text("Widget 2"),
          ),
        ),
        Card(
          color: Colors.amber[600],
          child: ListTile(
            title: Text("Widget 3"),
          ),
        ),
        Card(
          color: Colors.amber[600],
          child: ListTile(
            title: Text("Widget 4"),
          ),
        ),
        Card(
          color: Colors.amber[600],
          child: ListTile(
            title: Text("Widget 5"),
          ),
        ),
        Card(
          color: Colors.amber[600],
          child: ListTile(
            title: Text("Widget 6"),
          ),
        ),
        Card(
          color: Colors.amber[600],
          child: ListTile(
            title: Text("Widget 7"),
          ),
        ),
        Card(
          color: Colors.amber[600],
          child: ListTile(
            title: Text("Widget 8"),
          ),
        ),
        Card(
          color: Colors.amber[600],
          child: ListTile(
            title: Text("Widget 9"),
          ),
        ),
        Card(
          color: Colors.amber[600],
          child: ListTile(
            title: Text("Widget 10"),
          ),
        ),
        Card(
          color: Colors.amber[600],
          child: ListTile(
            title: Text("Widget 11"),
          ),
        ),
        Card(
          color: Colors.amber[600],
          child: ListTile(
            title: Text("Widget 12"),
          ),
        ),
        Card(
          color: Colors.amber[600],
          child: ListTile(
            title: Text("Widget 13"),
          ),
        ),
        Card(
          color: Colors.amber[600],
          child: ListTile(
            title: Text("Widget 14"),
          ),
        ),
        Card(
          color: Colors.amber[600],
          child: ListTile(
            title: Text("Widget 15"),
          ),
        ),
        Card(
          color: Colors.amber[600],
          child: ListTile(
            title: Text("Widget 16"),
          ),
        ),
        Card(
          color: Colors.amber[600],
          child: ListTile(
            title: Text("Widget 17"),
          ),
        ),
      ],
    ));
  }
}
