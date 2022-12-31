import 'dart:async';

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
  double _progress = 0;
  final int _duration = 1;

  void startTimer() {
    Timer.periodic(Duration(seconds: _duration), (timer) {
      setState(() {
        if (_progress == _duration) {
          timer.cancel();
        } else {
          _progress += 0.1;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: ElevatedButton(
                  child: const Text('Comenzar timer'),
                  onPressed: () {
                    setState(() {
                      _progress = 0;
                    });
                    startTimer();
                  },
                ),
              ),
              CircularProgressIndicator(
                backgroundColor: Colors.grey,
                valueColor: AlwaysStoppedAnimation(Colors.red),
                strokeWidth: 10,
                value: _progress,
              ),
              const SizedBox(
                height: 50,
              ),
              LinearProgressIndicator(
                backgroundColor: Colors.grey,
                valueColor: const AlwaysStoppedAnimation(Colors.green),
                minHeight: 10,
                value: _progress,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
