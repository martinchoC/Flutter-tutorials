import 'package:flutter/material.dart';

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

enum options { SI, NO, QUIZA }

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //Simple dialog
  String _optionSelected = "Presioná acá";
  void _setSelectedOption(String valueSelected) {
    setState(() {
      _optionSelected = valueSelected;
    });
  }

  Future<void> _showDialog() async {
    switch (await showDialog<options>(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          backgroundColor: Colors.grey,
          titlePadding: EdgeInsets.all(10),
          title: Text(
            "Simple dialog. Te gusta programar?",
            style: TextStyle(color: Colors.white),
          ),
          children: [
            SimpleDialogOption(
              child: Text(
                "Sí",
                style: TextStyle(color: Colors.white70),
              ),
              onPressed: () => Navigator.pop(context, options.SI),
            ),
            SimpleDialogOption(
              child: Text(
                "No",
                style: TextStyle(color: Colors.white70),
              ),
              onPressed: () => Navigator.pop(context, options.NO),
            ),
            SimpleDialogOption(
              child: Text(
                "Quizá",
                style: TextStyle(color: Colors.white70),
              ),
              onPressed: () => Navigator.pop(context, options.QUIZA),
            ),
          ],
        );
      },
    )) {
      case options.SI:
        _setSelectedOption("Si");
        break;
      case options.NO:
        _setSelectedOption("No");
        break;
      case options.QUIZA:
        _setSelectedOption("Quizá");
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Align(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Simple dialog
              ElevatedButton(
                onPressed: _showDialog,
                child: Text(_optionSelected),
              ),
              //AlertDialog
              ElevatedButton(
                child: Text("AlertDialog"),
                onPressed: (() => showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Cuidado!"),
                          content: Text("Querés salir de la app?"),
                          actions: [
                            TextButton(
                                onPressed: () => Navigator.of(context).pop(),
                                child: Text("Si"))
                          ],
                        );
                      },
                    )),
              ),
              //SnackBar
              Builder(builder: (context) {
                return ElevatedButton(
                  child: Text("SnackBar"),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Row(children: [
                        Icon(Icons.handshake),
                        Text("Hola, soy un SnackBar"),
                      ]),
                    ));
                  },
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
