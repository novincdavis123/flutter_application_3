import 'package:flutter/material.dart';

class cities extends StatelessWidget{
  var list1=[
    Image(image: NetworkImage(
      'https://images.unsplash.com/photo-1597040663342-45b6af3d91a5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8ZGVsaGl8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60')),
    Image(image: NetworkImage(
      'https://images.unsplash.com/photo-1533929736458-ca588d08c8be?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8bG9uZG9ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60')),
    Image(image: NetworkImage(
      'https://images.unsplash.com/photo-1559511260-66a654ae982a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dmFuY291dmVyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60')),
    Image(image: NetworkImage(
      'https://images.unsplash.com/photo-1530959106156-50f49c30932d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fG5ld3lvcmt8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60'))
    ];
  var list2=['Delhi','London','Vancour','New York'];
  var list3=['India\nPopulation: 19 mill','Britian\nPopulation :8 mill','Canada\nPopulation: 2.4 mill','USA\nPopulation: 8.1 mill'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cities around world',
      style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),backgroundColor: Colors.amber,),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: ((context, index) {
        return Card(child: ListTile(leading: list1[index],
        title: Text(list2[index],style: TextStyle(fontWeight: FontWeight.bold),),subtitle: Text(list3[index])));
      })),
    );
  }
}