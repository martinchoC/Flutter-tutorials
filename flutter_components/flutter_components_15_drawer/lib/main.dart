import 'package:flutter/material.dart';
import 'package:flutter_components_15_drawer/widgetSettings.dart';

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
    return Scaffold(
      //DRAWER 2. añadir appbar para desplegar en caso de no usar gestos
      appBar: AppBar(),

      //5. BottomNav. elegir el elemento que se muestra en esta pantalla/widget/pantalla principal
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),

      //DRAWER 1. implementacion. Se define un menu lateral con header y lista de items
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.lightBlue),
              child: Text(
                'Drawer cabecera',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Perfil'),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Mensaje'),
            ),
          ],
        ),
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
