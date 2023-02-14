import 'package:flutter/material.dart';

class Comm extends StatelessWidget{
  var list1=[Icon(Icons.people),Icon(Icons.people_outline),Icon(Icons.landslide_outlined),Icon(Icons.icecream_outlined),Icon(Icons.arrow_forward_ios),];
  var list2=[Text('New community'),Text('Nco operations'),Text('Technolab'),Text('Olaf ltd'),Text('View all'),];
  var list3=[Text(''),Text(''),Text('+9123786845:https://www.instagram.com/p/'),Text('+918437465:I am busy now'),Text(''),];
  var list4=[Text(''),Text(''),Text('7:46 pm'),Text('Yesterday'),Text(''),];

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