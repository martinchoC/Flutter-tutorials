import 'package:components_08_passing_data_between_screens/widgetArguments.dart';

import 'secondPage.dart';
import 'package:flutter/material.dart';

class FirstPageWidget extends StatelessWidget {
  const FirstPageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Page')),
      body: Center(
        child: TextButton(
          style: TextButton.styleFrom(
              primary: Colors.white,
              elevation: 2,
              backgroundColor: Colors.blueAccent),
          child: const Text(
            'Go to page 2',
          ),
          onPressed: () {
            //go to second page
            Navigator.pushNamed(
              context,
              '/secondPage',
              arguments: WidgetArguments("Going to Screen 2", 2),
            );
          },
        ),
      ),
    );
  }
}
