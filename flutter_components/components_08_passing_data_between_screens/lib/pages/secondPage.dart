import 'package:components_08_passing_data_between_screens/widgetArguments.dart';
import 'package:flutter/material.dart';

class SecondPageWidget extends StatelessWidget {
  const SecondPageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as WidgetArguments;
    return Scaffold(
      appBar: AppBar(title: Text(arguments.title)),
      body: Center(
        child: TextButton(
          style: TextButton.styleFrom(
              primary: Colors.white,
              elevation: 2,
              backgroundColor: Colors.blueAccent),
          child: Text(
            'To home from ${arguments.number}',
          ),
          onPressed: () {
            //go to main page
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
