import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class WidgetSettings extends StatelessWidget {
  const WidgetSettings({super.key});

  @override
  Widget build(BuildContext context) {
    //1. SilverApp. Sustituir el contenido por un CustomScrollView
    /*
      SilverAppBar: AppBar con funcionalidades customizables. 
      Integra un ScrollView que permite ampliar o desampliar dicha zona
    */

    //2. SilverApp, eliminar el AppBar de la pantalla principal.

    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 100,
          floating: true,
          pinned: true, //para no desaparecer el appbar
          snap:
              true, //para que se despliegue el appbar cuando volvemos para aqrriba en la lista
          title: Text('SliverAppBar'),
          actions: [
            IconButton(
              icon: Icon(Icons.ac_unit),
              onPressed: () {},
            ),
          ],
          bottom: PreferredSize(
            child: Icon(Icons.access_alarm_rounded),
            preferredSize: Size.fromHeight(50),
          ),
          flexibleSpace: FlexibleSpaceBar(
            title: Text('Hola'),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              ListTile(title: Text("Item 1")),
              ListTile(title: Text("Item 2")),
              ListTile(title: Text("Item 3")),
              ListTile(title: Text("Item 4")),
              ListTile(title: Text("Item 5")),
              ListTile(title: Text("Item 6")),
              ListTile(title: Text("Item 7")),
              ListTile(title: Text("Item 8")),
              ListTile(title: Text("Item 9")),
              ListTile(title: Text("Item 10")),
              ListTile(title: Text("Item 1")),
              ListTile(title: Text("Item 2")),
              ListTile(title: Text("Item 3")),
              ListTile(title: Text("Item 4")),
              ListTile(title: Text("Item 5")),
              ListTile(title: Text("Item 6")),
              ListTile(title: Text("Item 7")),
              ListTile(title: Text("Item 8")),
              ListTile(title: Text("Item 9")),
              ListTile(title: Text("Item 10")),
              ListTile(title: Text("Item 1")),
              ListTile(title: Text("Item 2")),
              ListTile(title: Text("Item 3")),
              ListTile(title: Text("Item 4")),
              ListTile(title: Text("Item 5")),
              ListTile(title: Text("Item 6")),
              ListTile(title: Text("Item 7")),
              ListTile(title: Text("Item 8")),
              ListTile(title: Text("Item 9")),
              ListTile(title: Text("Item 10")),
            ],
          ),
        ),
      ],
    );
  }
}
