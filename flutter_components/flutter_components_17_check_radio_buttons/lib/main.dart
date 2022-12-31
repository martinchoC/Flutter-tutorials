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

enum SelectorRadioButton { option1, option2 }

class _MyHomePageState extends State<MyHomePage> {
  //1. Crear variable que identifique el estado actual
  bool _isActivated = false;
  bool _isActivatedListTile = false;
  SelectorRadioButton _isActivatedListTileRadio = SelectorRadioButton.option1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Checkbox(
              value: _isActivated,
              onChanged: (valueIn) {
                setState(() {
                  _isActivated = valueIn!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('CheckBox ListTile'),
              value: _isActivatedListTile,
              onChanged: (valueIn) {
                setState(() {
                  _isActivatedListTile = valueIn!;
                });
              },
            ),
            ListTile(
              title: Text('Opcion 1'),
              leading: Radio(
                value: SelectorRadioButton.option1,
                groupValue: _isActivatedListTileRadio,
                onChanged: (valueIn) {
                  setState(() {
                    _isActivatedListTileRadio = valueIn!;
                  });
                },
              ),
            ),
            ListTile(
              title: Text('Opcion 2'),
              leading: Radio(
                value: SelectorRadioButton.option2,
                groupValue: _isActivatedListTileRadio,
                onChanged: (valueIn) {
                  setState(() {
                    _isActivatedListTileRadio = valueIn!;
                  });
                },
              ),
            ),
          ],
        ));
  }
}
