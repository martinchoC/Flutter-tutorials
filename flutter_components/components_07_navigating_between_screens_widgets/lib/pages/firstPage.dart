import 'package:components_07_navigating_between_screens_widgets/pages/secondPage.dart';
import 'package:flutter/material.dart';

class FirstPageWidget extends StatelessWidget {
  const FirstPageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Page')),
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
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondPageWidget()),
            );
          },
        ),
      ),
    );
  }
}
