import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        //buttonbar - lista de botones
        child: ButtonBar(
          children: [
            //TextButton - botón con un texto y background
            TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green)),
              child: const Text(
                'Text button, ex flat button',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {},
            ),
            //IconButton
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.accessible_forward),
            ),
            //OutlineButton
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  disabledForegroundColor: Colors.grey),
              onPressed: () {},
              child: Text('Outlined button'),
            ),
            //ElevatedButton - ex RaisedButton
            ElevatedButton(
              onPressed: () {},
              child: Container(
                decoration: BoxDecoration(
                    gradient:
                        LinearGradient(colors: [Color.green, Color.blue])),
              ),
            )
          ],
        ),
      ),
    );
  }
}
