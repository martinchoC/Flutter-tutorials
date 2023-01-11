import 'package:advanced_components_06_expansionpanel/item.dart';
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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

List<Item> _itemsList = generateItemsList(10);

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        //4. añadir el widget en la build principal de la app
        child: _myWidgetExpansionPanel(),
      ),
    );
  }

  //3. definir widget del expansionPanel
  Widget _myWidgetExpansionPanel() {
    return ExpansionPanelList(
      expansionCallback: (int panelIndex, bool isExpanded) {
        setState(() {
          _itemsList[panelIndex].isExpanded = !isExpanded;
        });
      },
      children: _itemsList.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (
            BuildContext context,
            bool isExpanded,
          ) {
            return ListTile(
              title: Text(item.title),
            );
          },
          body: ListTile(
              title: Text(item.expanded),
              subtitle: const Text(
                  'Borrá este item presionando el icono del tarrito de basura'),
              trailing: Icon(Icons.delete),
              onTap: () {
                setState(() {
                  _itemsList.removeWhere((currentItem) => item == currentItem);
                });
              }),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}
