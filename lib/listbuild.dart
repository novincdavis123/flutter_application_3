import 'package:flutter/material.dart';

class Builddemo extends StatelessWidget{
  var a=<String>['Resident evil','Call of duty','Devil may cry'];
  var color=[500,300,800];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Welcome'),leading: Icon(Icons.account_circle),
      actions: [IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: Colors.greenAccent,))],),
      body: ListView.builder(
        itemCount: a.length,
        itemBuilder: (BuildContext,index){
          return Container(
            height: 100,
            color: Colors.blue[color[index]],
            child: Center(child: Text(a[index])),
          );
        }),
    );
  }

}