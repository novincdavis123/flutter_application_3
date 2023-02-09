import 'package:flutter/material.dart';
import 'package:flutter_application_3/home.dart';
import 'package:flutter_application_3/listbuild.dart';
import 'package:flutter_application_3/listseparated.dart';
import 'package:flutter_application_3/pract2.dart';

class A extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(floatingActionButton: IconButton(onPressed: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Home()));
    }, icon: Icon(Icons.add)),
    floatingActionButtonAnimator:FloatingActionButtonAnimator.scaling,
      appBar: AppBar(
        leading: Icon(Icons.do_disturb),
        title: Text('practice'),actions: [IconButton(onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Builddemo()));}, icon: Icon(Icons.menu))
        ],
        ),
        body: ElevatedButton(onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>B()));
        },child: Text('Next')),
        bottomNavigationBar: BottomNavigationBar(items: [BottomNavigationBarItem(icon: Icon(Icons.ballot),label: 'abcd'),
        BottomNavigationBarItem(icon: Icon(Icons.ballot),label: 'qwer'),BottomNavigationBarItem(icon: Icon(Icons.ballot),label: 'fghj')
        ]),
    );
  }

}