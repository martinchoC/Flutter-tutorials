import 'package:components_07_navigating_between_screens_widgets/pages/firstPage.dart';
import 'package:flutter/material.dart';

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
            'Go to page 1',
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
