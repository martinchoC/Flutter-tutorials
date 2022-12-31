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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar demo'),
          bottom: const TabBar(tabs: [
            Tab(
              text: 'Noticias',
            ),
            Tab(
              text: 'Favoritos',
            ),
            Tab(
              text: 'Contactos',
            ),
            Tab(
              text: 'Otros',
            ),
          ]),
        ),
        body: Center(
          child: TabBarView(
            children: [
              Text('Noticias'),
              Text('Favoritos'),
              Text('Contactos'),
              Text('Otros'),
            ],
          ),
        ),
      ),
    );
  }
}
