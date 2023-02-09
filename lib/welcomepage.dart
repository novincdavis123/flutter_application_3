import 'package:flutter/material.dart';

class Welcomepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Welcome user',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),)),
    );
  }

}