import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: <Widget>[
          //Image
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: const Image(
                height: 150,
                fit: BoxFit.fitWidth,
                filterQuality: FilterQuality.high,
                image: AssetImage('assets/images/pikachu.jpeg')),
          ),
          //Icon
          Icon(
            Icons.favorite,
            color: Colors.red,
            size: 48,
          )
        ],
      )),
    );
  }
}
