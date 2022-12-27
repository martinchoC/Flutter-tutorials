import 'package:flutter/material.dart';
import 'mainWidgets/myHomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: const Color(0xff1976d2),
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(secondary: const Color(0xff9e9e9e)),
          fontFamily: 'Georgia',
          textTheme: const TextTheme(
              headline1: TextStyle(fontSize: 36, fontStyle: FontStyle.italic),
              bodyText1: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
