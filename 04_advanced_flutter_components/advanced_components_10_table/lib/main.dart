import 'package:advanced_components_10_table/comida.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//2. definir los valores de la lista
final List<ComidaItem> _listaComidas = [
  ComidaItem("Yogurt", 87),
  ComidaItem("Turrón", 100),
  ComidaItem("Sandía (1Kg)", 100),
  ComidaItem("Galletas (100gr)", 300)
];

//3. Widget de la tabla
Widget _buildTable({bool sortAscending = true}) {
  return DataTable(
    sortColumnIndex: 0,
    sortAscending: sortAscending,
    onSelectAll: (value) {},
    columns: <DataColumn>[
      const DataColumn(label: Text("Nombre"), tooltip: 'Nombre de la comida'),
      DataColumn(
        label: const Text('Calorias'),
        tooltip: 'Calorias',
        numeric: true,
        onSort: ((columnIndex, ascending) {}),
      ),
    ],
    rows: _listaComidas.map<DataRow>((ComidaItem comidaItem) {
      return DataRow(
        //key: Key(comidaItem.name),
        onSelectChanged: (value) {},
        cells: <DataCell>[
          DataCell(
            Text(comidaItem.name),
          ),
          DataCell(
            Text('${comidaItem.calories}'),
            showEditIcon: true,
            onTap: () {},
          ),
        ],
      );
    }).toList(),
  );
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
    return Scaffold(
      body: Center(
        child: _buildTable(),
      ),
    );
  }
}

//1. definir la clase de cada elemento de la tabla
//creo  la clase comidaItem

