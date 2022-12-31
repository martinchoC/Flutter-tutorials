import 'package:components_07_navigating_between_screens_widgets/pages/firstPage.dart';
import 'package:components_07_navigating_between_screens_widgets/pages/secondPage.dart';
import 'package:flutter/material.dart';

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
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const FirstPageWidget(),
        '/secondPage': (context) => const SecondPageWidget()
      },
    );
  }
}
