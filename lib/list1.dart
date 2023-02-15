import 'package:flutter/material.dart';

class Comm extends StatelessWidget {
  var list1 = [
    Stack(children: [
      Icon(size: 40, Icons.people),
      Positioned(
          left: 20,
          top: 15,
          child: Icon(color: Colors.green, size: 20, Icons.add_circle_outlined))
    ]),
    CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1614680376408-81e91ffe3db7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8aWNvbnN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
    ),
    CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1612810806695-30f7a8258391?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8aWNvbnN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
    ),
    CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1611162616305-c69b3fa7fbe0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGljb25zfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
    ),
    Icon(Icons.arrow_forward_ios),
  ];
  var list2 = [
    Text('New community'),
    Text('Nco operations'),
    Text('Technolab'),
    Text('Olaf ltd'),
    Text('View all'),
  ];
  var list3 = [
    Text(''),
    Text(''),
    Text('+9123786845:https://www.instagram.com/p/'),
    Text('+918437465:I am busy now'),
    Text(''),
  ];
  var list4 = [
    Text(''),
    Text(''),
    Text('7:46 pm'),
    Text('Yesterday'),
    Text(''),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext, index) {
              return Container(
                  child: ListTile(
                      leading: list1[index],
                      title: list2[index],
                      subtitle: list3[index],
                      trailing: list4[index]));
            }));
  }
}
