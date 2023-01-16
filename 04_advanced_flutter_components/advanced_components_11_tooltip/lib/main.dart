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
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 8.0),
        child: Align(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Tooltip(
                message: ("Icono que activa la alarma"),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.access_alarm),
                ),
              ),
              Tooltip(
                message: ("Icono del reloj"),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.access_time_sharp),
                ),
              ),
              Tooltip(
                message: ("Home"),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.cabin_rounded),
                ),
              ),
              Tooltip(
                message: ("Contactos"),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.account_box),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
