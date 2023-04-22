import 'package:flutter/material.dart';
import 'package:flutter_application_3/Api/mian.dart';

class Second extends StatefulWidget {
  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Welcome User'),
          SizedBox(
            height: 50,
          ),
          OutlinedButton.icon(
              onPressed: () {
                Navigator.push(
            context, MaterialPageRoute(builder: (context) => MyHomePage()));
              },
              icon: Icon(
                Icons.exit_to_app,
                size: 18,
              ),
              label: Text('Logout')),
        ],
      ))),
    );
  }
}
