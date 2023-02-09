import 'package:flutter/material.dart';

class B extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('button')),
      body: ElevatedButton(onPressed: (() {
        Navigator.of(context).pop();
      }),child: Text('back'),onLongPress: (){
        Navigator.of(context).pushNamed('screen1');
      },
      ),
    );
  }

}