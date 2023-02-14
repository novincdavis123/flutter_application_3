import 'package:flutter/material.dart';

class Stat extends StatelessWidget{
  var list1=[Icon(Icons.person_add),Icon(Icons.people_outline),Icon(Icons.landslide_outlined),Icon(Icons.icecream_outlined),Icon(Icons.arrow_forward_ios),];
  var list2=[Text('My Status'),Text('Akhil chettan'),Text('Chinnukutty'),Text('rejeesha chechi'),Text('Vijayettan'),];
  var list3=[Text('24 minutes ago'),Text('57 minutes ago'),Text('59 minutes ago'),Text('Yesterday,23:44'),Text('Yesterday,22:43'),];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemCount: 5,
        itemBuilder: (BuildContext,index){
        return Container(child: ListTile(leading: list1[index],title: list2[index],subtitle: list3[index]));
      })
    );
  }
}