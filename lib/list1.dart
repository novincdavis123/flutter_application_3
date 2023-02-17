import 'package:flutter/material.dart';

class Comm extends StatelessWidget {
  var list1 = [
    Stack(children: const [
      CircleAvatar(
        radius: 25,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        child: CircleAvatar(
          radius: 20,
          child: Icon(color: Colors.grey, Icons.people),
        ),
      ),
      Positioned(
          right: 3,
          bottom: 5,
          child: CircleAvatar(
              radius: 10,
              backgroundColor: Colors.green,
              child: Icon(size:15,
                Icons.add,
                color: Colors.white,
              ))),
    ]),
    const CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1614680376408-81e91ffe3db7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8aWNvbnN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
    ),
    const CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1612810806695-30f7a8258391?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8aWNvbnN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
    ),
    const CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1611162616305-c69b3fa7fbe0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGljb25zfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
    ),
    const Icon(Icons.arrow_forward_ios),
  ];
  var list2 = [
    const Text('New community'),
    const Text('Nco operations'),
    const Text('Technolab'),
    const Text('Olaf ltd'),
    const Text('View all'),
  ];
  var list3 = [
    const Text(''),
    const Text(''),
    const Text('+9123786845:https://www.instagram.com/p/'),
    const Text('+918437465:I am busy now'),
    const Text(''),
  ];
  var list4 = [
    const Text(''),
    const Text(''),
    const Text('7:46 pm'),
    const Text('Yesterday'),
    const Text(''),
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
