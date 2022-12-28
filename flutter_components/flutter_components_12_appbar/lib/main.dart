import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
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
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar nuevo'),
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
        elevation: 10,
        leading: Icon(Icons.favorite),
        actions: [
          IconButton(
            icon: Icon(Icons.add_a_photo),
            tooltip: 'Agrega una foto a la lista',
            onPressed: () => {log('Boton pulsado')},
          ),
        ],
        systemOverlayStyle: SystemUiOverlayStyle.light,
        toolbarOpacity: 0.8,
      ),
    );
  }
}
