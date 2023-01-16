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
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stepper(
        currentStep: _currentStep,
        onStepContinue: () {
          if (_currentStep >= 4) return;
          setState(() {
            _currentStep++;
          });
        },
        onStepCancel: () {
          if (_currentStep <= 0) return;
          setState(() {
            _currentStep--;
          });
        },
        steps: [
          Step(
            title: Text("Introduccion"),
            content: SizedBox(
              width: 110,
              height: 110,
            ),
          ),
          Step(
            title: Text("1"),
            content: SizedBox(
              width: 110,
              height: 110,
            ),
          ),
          Step(
            title: Text("2"),
            content: SizedBox(
              width: 110,
              height: 110,
            ),
          ),
          Step(
            title: Text("3"),
            content: SizedBox(
              width: 110,
              height: 110,
            ),
          ),
          Step(
            title: Text("4"),
            content: SizedBox(
              width: 110,
              height: 110,
            ),
          ),
        ],
      ),
    ));
  }
}
