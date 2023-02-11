import 'package:flutter/material.dart';

class Grider6 extends StatelessWidget {
  var list1=[
    DecorationImage(fit:BoxFit.fill,image: NetworkImage(
        'https://images.unsplash.com/photo-1480714378408-67cf0d13bc1b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8dXNhfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60')),
    DecorationImage(fit:BoxFit.fill,image: NetworkImage(
        'https://images.unsplash.com/photo-1543832923-44667a44c804?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8RW5nbGFuZHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60')),
    DecorationImage(fit:BoxFit.fill,image: NetworkImage(
        'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZnJhbmNlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60')),
    DecorationImage(fit:BoxFit.fill,image: NetworkImage(
        'https://images.unsplash.com/photo-1554844344-c34ea04258c4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fHJ1c3NpYXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60')),
    DecorationImage(fit:BoxFit.fill,image: NetworkImage(
        'https://images.unsplash.com/photo-1519832979-6fa011b87667?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Y2FuYWRhfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1400&q=60')),
    DecorationImage(fit:BoxFit.fill,image: NetworkImage(
        'https://images.unsplash.com/photo-1491557345352-5929e343eb89?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8ZXVyb3BlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1400&q=60')),
  ];
  var list2=['USA','England','France','Russia','Canada','Europe'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.blue,title: Text('Gridview()')),
        body: GridView.builder(itemCount: 6,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10),
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),image: list1[index]),
                ),
                  ),Positioned(left: 20,top:150,child: Text(list2[index],
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),))
              ]
              );
            }));
  }
}