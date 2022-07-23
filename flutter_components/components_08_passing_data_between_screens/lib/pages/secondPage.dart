import 'package:components_08_passing_data_between_screens/widgetArguments.dart';
import 'package:flutter/material.dart';

//4. implement the SecondPage widget logic
class SecondPageWidget extends StatelessWidget {
  const SecondPageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Page')),
      body: Center(
        child: TextButton(
          style: TextButton.styleFrom(
              primary: Colors.white,
              elevation: 2,
              backgroundColor: Colors.blueAccent),
          child: const Text(
            'Go to main screen',
          ),
          onPressed: () {
            //go to main page
            Navigator.pop(context, 'Return from second page');
          },
        ),
      ),
    );
  }
}
