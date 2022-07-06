import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: const <Widget>[
          //ListTile with title
          Card(
            child: ListTile(
              title: Text("Soy un ListTile"),
            ),
          ),
          //ListTile with icon
          Card(
            child: ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text("Soy un ListTile con icono"),
            ),
          ),
          //ListTile with icon and trailing
          Card(
            child: ListTile(
              leading: Icon(Icons.contact_mail),
              trailing: Icon(Icons.more_vert),
              title: Text("Soy un ListTile con icono"),
            ),
          ),
          //ListTile with icon, trailing and subtitle
          Card(
            child: ListTile(
              leading: Icon(Icons.contact_mail),
              trailing: Icon(Icons.more_vert),
              title: Text("Soy un ListTile con subtitulo"),
              subtitle: Text("Soy un subtitulo"),
            ),
          ),
        ],
      ),
    );
  }
}
