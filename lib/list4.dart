import 'package:flutter/material.dart';

class Calls extends StatelessWidget{
  var list1=[Icon(Icons.people),Icon(Icons.people_outline),Icon(Icons.landslide_outlined),Icon(Icons.icecream_outlined),Icon(Icons.arrow_forward_ios),];
  var list2=[Text('Adharsh das'),Text('Raveena krishnan'),Text('Praveen kumar'),Text('Varghese chirayath'),Text('Madhavan kattungal'),];
  var list3=[
    Row(
      children: [Icon(Icons.call_received,color: Colors.green),
        Text('Yesterday,18:40'),
      ],
    ),
    Row(
      children: [Icon(Icons.call_received,color: Colors.green),
        Text('March24,18:26'),
      ],
    ),
    Row(
      children: [Icon(Icons.call_received,color: Colors.green),
        Text('April19,14:06'),
      ],
    ),
    Row(
      children: [Icon(Icons.call_received,color: Colors.green),
        Text('February20,21:33'),
      ],
    ),
    Row(
      children: [Icon(Icons.call_received,color: Colors.green),
        Text('February20,20:30'),
      ],
    ),];
  var list4=[Icon(Icons.phone,color: Colors.green),Icon(Icons.phone,color: Colors.green),Icon(Icons.phone,color: Colors.green),Icon(Icons.phone,color: Colors.green),Icon(Icons.phone,color: Colors.green)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemCount: 5,
        itemBuilder: (BuildContext,index){
        return Container(child: ListTile(leading: list1[index],title: list2[index],subtitle: list3[index],trailing: list4[index]));
      })
    );
  }
}