import 'package:flutter/material.dart';

class Expan extends StatelessWidget {
  List colors=[
    Colors.red,
    Colors.yellow,
    Colors.blue,
    Colors.green,
    Colors.pink,
    ];
    List datas=[
    'Red','yellow','blue','green','pink'
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Expansion tile')),
      body: ExpansionTile(title: Text('colors'),
      subtitle: Text('List of colors'),
      children: List.generate(5, (index) => ListTile(
        leading: CircleAvatar(backgroundColor: colors[index],),
        title: Text(datas[index]),
      )),),
    );
  }
}