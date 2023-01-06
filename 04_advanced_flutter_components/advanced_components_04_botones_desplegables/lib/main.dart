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

enum SelectorOpciones { option1, option2, option3, option4, option5 }

class _MyHomePageState extends State<MyHomePage> {
  //1. Crear una variable para indicar el valor actual del dropdown button
  String dropdownValue = "Opción 1";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            DropdownButton(
              //2. rellenar las opciones a mostrar en el boton desplegable
              items: <String>[
                "Opción 1",
                "Opción 2",
                "Opción 3",
                "Opción 4",
                "Opción 5"
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                    value: value, child: Text(value));
              }).toList(),
              //3. personalizar la vista
              icon: Icon(Icons.access_alarms),
              iconSize: 15,
              elevation: 16,
              underline: Container(
                height: 3,
                color: Colors.blue,
              ),
              style: TextStyle(color: Colors.black),
              //4. actualizar el valir que se eligió
              value: dropdownValue,
              onChanged: (valueIn) {
                setState(() {
                  dropdownValue = valueIn!;
                });
              },
            ),
            PopupMenuButton<SelectorOpciones>(
              onSelected: (value) {
                setState(() {});
              },
              itemBuilder: (BuildContext context) =>
                  <PopupMenuEntry<SelectorOpciones>>[
                const PopupMenuItem<SelectorOpciones>(
                  child: Text("Opción 1"),
                  value: SelectorOpciones.option1,
                ),
                const PopupMenuItem<SelectorOpciones>(
                  child: Text("Opción 2"),
                  value: SelectorOpciones.option2,
                ),
                const PopupMenuItem<SelectorOpciones>(
                  child: Text("Opción 3"),
                  value: SelectorOpciones.option3,
                ),
                const PopupMenuItem<SelectorOpciones>(
                  child: Text("Opción 4"),
                  value: SelectorOpciones.option4,
                ),
                const PopupMenuItem<SelectorOpciones>(
                  child: Text("Opción 5"),
                  value: SelectorOpciones.option5,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
