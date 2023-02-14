import 'package:flutter/material.dart';

class Chat extends StatelessWidget{
  var list1=[Icon(Icons.people),Icon(Icons.people_outline),Icon(Icons.landslide_outlined),Icon(Icons.icecream_outlined),Icon(Icons.arrow_forward_ios),];
  var list2=[Text('Rajesh kumar'),Text('Ravindran menon'),Text('Akshaya john'),Text('Sruthy vijayan'),Text('Raju bhai'),];
  var list3=[Text('Flutter is cool'),Text('Coding is amazing'),Text('Good morning'),Text('Hello sir'),Text('Welcome to kochi'),];
  var list4=[Text('12:00 pm'),Text('Yesterday'),Text('7:46 pm'),Text('Yesterday'),Text('2/22/20'),];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemCount: 5,
        itemBuilder: (BuildContext,index){
        return Container(child: ListTile(leading: list1[index],title: list2[index],subtitle: list3[index],trailing: list4[index],));
      })
    );
  }
}