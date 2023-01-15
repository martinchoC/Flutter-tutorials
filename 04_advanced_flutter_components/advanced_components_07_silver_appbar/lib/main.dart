import 'package:advanced_components_07_silver_appbar/widgetSettings.dart';
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
  //1. BottomNav. indice del selector del bottomNavigation
  int _selectedIndex = 0;
  //2. BottomNav. lista de opciones del bottomNavigation
  static List<Widget> _widgetOptions = <Widget>[
    Text('Index 0: inicio'),
    Text('Index 1: favoritos'),
    Text('Index 2: mis listas'),
    WidgetSettings()
  ];
  //3. BottomNav. funcion que indica que guarda el valor del indice seleccionado
  void _selectedOptionInButtonNavigation(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    //5. BottomNav. elegir el elemento que se muestra en esta pantalla/widget/pantalla principal
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      //4. BottomNav. implementacion de la navegación en el bottomNavigation
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favoritos'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Mis listas'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Ajustes'),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.pink,
        onTap: _selectedOptionInButtonNavigation,
      ),
    );
  }
}
