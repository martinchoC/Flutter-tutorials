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
      body: Center(
        child: TextButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      child: Padding(
                        padding: EdgeInsets.all(32),
                        child: Column(
                          children: [
                            ListTile(
                              title: Text("Hola 1"),
                              leading: Icon(Icons.abc_outlined),
                            ),
                            ListTile(
                              title: Text("Hola 2"),
                              leading: Icon(Icons.abc_rounded),
                            ),
                            ListTile(
                              title: Text("Hola 3"),
                              leading: Icon(Icons.abc_sharp,
                            ),
                          ],
                        ),
                      ),
                    );
                  });
            },
            child: Text("Ejecutar ButtonSheet")),
      ),
    );
  }
}
