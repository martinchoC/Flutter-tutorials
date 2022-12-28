import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Textos',
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
      appBar: AppBar(title: const Text('Textos')),
      body: Column(
        children: <Widget>[
          //1. Texto standard donde es posible marcar y definir un estilo
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: const Text(
              'Texto estandar',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 16, color: Colors.red),
            ),
          ),
          //2. Texto enriquecido, donde es posible mostrar cadenas de texto
          //con diferentes estilos
          RichText(
              text: const TextSpan(
                  text: 'Texto enriquecido ',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      color: Colors.green),
                  children: <TextSpan>[
                TextSpan(
                    text: 'bold ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.pink)),
                TextSpan(
                    text: 'normal',
                    style: TextStyle(
                        fontWeight: FontWeight.normal, color: Colors.amber)),
              ]))
        ],
      ),
    );
  }
}
