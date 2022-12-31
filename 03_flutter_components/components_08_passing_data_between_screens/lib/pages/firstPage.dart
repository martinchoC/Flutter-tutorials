import 'package:components_08_passing_data_between_screens/pages/secondPage.dart';

import '../widgetArguments.dart';

import 'package:flutter/material.dart';

//1. widget button to go to next screen
class FirstPageWidget extends StatelessWidget {
  const FirstPageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: ButtonScreen2()));
  }
}

class ButtonScreen2 extends StatelessWidget {
  const ButtonScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          _navigateToSecondScreenAndWaitValue(context);
        },
        child: const Text('Go to widget 2'));
  }
}

//2. method to start secondPage widget and waits for the result
//async becaus we must wait the result
_navigateToSecondScreenAndWaitValue(BuildContext context) async {
  //3. create widget in /lib/pages
  //5. import widget
  final result = await Navigator.push(
      context, MaterialPageRoute(builder: (context) => SecondPageWidget()));
  //6. show result from secondPage widget with a snackBar/text
  ScaffoldMessenger.of(context)
    ..removeCurrentSnackBar()
    ..showSnackBar(SnackBar(content: Text('$result')));
}
