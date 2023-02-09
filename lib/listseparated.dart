import 'dart:ui';

import 'package:flutter/material.dart';

class Separatedemo extends StatelessWidget{
   var a=<String>['Resident evil','Call of duty','Devil may cry'];
   var color=[500,300,800];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('yo man',style: TextStyle(fontWeight: FontWeight.bold),)),
      body: ListView.separated(itemBuilder:(BuildContext, index) {
          return Container(
            height: 100,
            color: Colors.red[color[index]],
            child: Center(child: Text(a[index])),
          );
        },
       separatorBuilder: (BuildContext,index){
        return Divider(
          thickness: 10,
          color: Colors.amber[color[index]],
        );
       },
        itemCount: a.length),
    );
  }

}