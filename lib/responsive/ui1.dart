import 'package:flutter/material.dart';

class UI extends StatefulWidget {

  @override
  State<UI> createState() => _UIState();
}

class _UIState extends State<UI> {
  @override
  Widget build(BuildContext context) {
  double screenWidth=MediaQuery.of(context).size.width;
  double screenHeight=MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Center(child: Text('$screenWidth,$screenHeight')),
        ],
      ),

    );
  }
}